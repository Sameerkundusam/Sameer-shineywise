import { LightningElement } from 'lwc';
import pdflib from "@salesforce/resourceUrl/pdflib";
import { loadScript }  from "lightning/platformResourceLoader";

export default class PdfDownloader extends LightningElement {
    renderedCallback(){
        loadScript(this,pdflib).then(()=>{});
    }
    async createPdf() {
        const pdfDoc = await PDFLib.PDFDocument.create()
        const timesRomanFont = await pdfDoc.embedFont(PDFLib.StandardFonts.TimesRoman)
      
        const page = pdfDoc.addPage()
        const { width, height } = page.getSize()
        const fontSize = 30
        page.drawText('Creating PDFs in JavaScript is awesome!', {
          x: 50,
          y: height - 4 * fontSize,
          size: fontSize,
          font: timesRomanFont,
          color: PDFLib.rgb(0, 0.53, 0.71),
        })
      
        const pdfBytes = await pdfDoc.save();
        this.saveByteArray("My PDF",pdfBytes);
      }
      saveByteArray(pdfName,byte){
        var blob = new Blob([byte], {type: "application/pdf"});
        var link = document.createElement("a");
        link.href = window.URL.createObjectURL(blob);
        var fileName = pdfName;
        link.download = fileName;
        link.click();

      }
}