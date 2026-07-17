<!DOCTYPE html>
<html lang="ms">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">

  <title>Kuiz Prinsip Perakaunan</title>

  <style>
    * {
      box-sizing: border-box;
    }

    body {
      margin: 0;
      padding: 20px;
      font-family: Arial, sans-serif;
      background: #f1f5f9;
      color: #1e293b;
    }

    .container {
      max-width: 750px;
      margin: auto;
      background: white;
      padding: 30px;
      border-radius: 15px;
      box-shadow: 0 5px 20px rgba(0, 0, 0, 0.1);
    }

    h1 {
      text-align: center;
      margin-bottom: 5px;
    }

    .penerangan {
      text-align: center;
      color: #64748b;
      margin-bottom: 30px;
    }

    .soalan {
      background: #f8fafc;
      border-left: 5px solid #2563eb;
      padding: 20px;
      margin-bottom: 20px;
      border-radius: 8px;
    }

    .soalan h3 {
      margin-top: 0;
    }

    label {
      display: block;
      padding: 10px;
      margin: 6px 0;
      background: white;
      border: 1px solid #cbd5e1;
      border-radius: 6px;
      cursor: pointer;
    }

    label:hover {
      background: #eff6ff;
    }

    input[type="radio"] {
      margin-right: 8px;
    }

    button {
      width: 100%;
      padding: 14px;
      border: none;
      border-radius: 8px;
      font-size: 17px;
      font-weight: bold;
      cursor: pointer;
      margin-top: 10px;
    }

    #semak {
      background: #2563eb;
      color: white;
    }

    #semak:hover {
      background: #1d4ed8;
    }

    #ulang {
      background: #e2e8f0;
      color: #1e293b;
      display: none;
    }

    #keputusan {
      display: none;
      margin-top: 25px;
      padding: 20px;
      border-radius: 10px;
      text-align: center;
      font-size: 20px;
      font-weight: bold;
    }

    .betul {
      background: #dcfce7;
      color: #166534;
    }

    .sederhana {
      background: #fef9c3;
      color: #854d0e;
    }

    .rendah {
      background: #fee2e2;
      color: #991b1b;
    }
  </style>
</head>

<body>

  <div class="container">
    <h1>Kuiz Prinsip Perakaunan</h1>

    <p class="penerangan">
      Jawab semua soalan dan tekan butang Semak Jawapan.
    </p>

    <form id="borangKuiz">

      <div class="soalan">
        <h3>1. Apakah maksud aset?</h3>

        <label>
          <input type="radio" name="q1" value="a">
          Hutang perniagaan kepada pihak luar
        </label>

        <label>
          <input type="radio" name="q1" value="b">
          Sumber ekonomi yang dimiliki oleh perniagaan
        </label>

        <label>
          <input type="radio" name="q1" value="c">
          Wang yang dikeluarkan oleh pemilik
        </label>

        <label>
          <input type="radio" name="q1" value="d">
          Belanja harian perniagaan
        </label>
      </div>

      <div class="soalan">
        <h3>2. Yang manakah merupakan liabiliti?</h3>

        <label>
          <input type="radio" name="q2" value="a">
          Tunai
        </label>

        <label>
          <input type="radio" name="q2" value="b">
          Inventori
        </label>

        <label>
          <input type="radio" name="q2" value="c">
          Akaun Belum Bayar
        </label>

        <label>
          <input type="radio" name="q2" value="d">
          Perabot
        </label>
      </div>

      <div class="soalan">
        <h3>3. Apakah persamaan perakaunan?</h3>

        <label>
          <input type="radio" name="q3" value="a">
          Aset = Liabiliti + Ekuiti Pemilik
        </label>

        <label>
          <input type="radio" name="q3" value="b">
          Aset = Hasil − Belanja
        </label>

        <label>
          <input type="radio" name="q3" value="c">
          Liabiliti = Aset + Modal
        </label>

        <label>
          <input type="radio" name="q3" value="d">
          Modal = Jualan + Belian
        </label>
      </div>

      <div class="soalan">
        <h3>4. Dokumen yang dikeluarkan bagi jualan secara kredit ialah:</h3>

        <label>
          <input type="radio" name="q4" value="a">
          Resit
        </label>

        <label>
          <input type="radio" name="q4" value="b">
          Invois
        </label>

        <label>
          <input type="radio" name="q4" value="c">
          Memo
        </label>

        <label>
          <input type="radio" name="q4" value="d">
          Baucar pembayaran
        </label>
      </div>

      <div class="soalan">
        <h3>5. Inventori merupakan:</h3>

        <label>
          <input type="radio" name="q5" value="a">
          Aset semasa
        </label>

        <label>
          <input type="radio" name="q5" value="b">
          Aset bukan semasa
        </label>

        <label>
          <input type="radio" name="q5" value="c">
          Liabiliti semasa
        </label>

        <label>
          <input type="radio" name="q5" value="d">
          Ekuiti pemilik
        </label>
      </div>

      <button type="button" id="semak" onclick="semakJawapan()">
        Semak Jawapan
      </button>

      <button type="button" id="ulang" onclick="ulangKuiz()">
        Cuba Semula
      </button>

    </form>

    <div id="keputusan"></div>
  </div>

  <script>
    function semakJawapan() {
      const jawapanBetul = {
        q1: "b",
        q2: "c",
        q3: "a",
        q4: "b",
        q5: "a"
      };

      let markah = 0;
      let belumJawab = [];

      for (const soalan in jawapanBetul) {
        const pilihan = document.querySelector(
          `input[name="${soalan}"]:checked`
        );

        if (!pilihan) {
          belumJawab.push(soalan);
        } else if (pilihan.value === jawapanBetul[soalan]) {
          markah++;
        }
      }

      if (belumJawab.length > 0) {
        alert("Sila jawab semua soalan terlebih dahulu.");
        return;
      }

      const jumlahSoalan = Object.keys(jawapanBetul).length;
      const peratus = Math.round((markah / jumlahSoalan) * 100);

      const keputusan = document.getElementById("keputusan");

      keputusan.style.display = "block";
      keputusan.className = "";

      let ulasan = "";

      if (peratus >= 80) {
        keputusan.classList.add("betul");
        ulasan = "Tahniah! Penguasaan anda sangat baik.";
      } else if (peratus >= 50) {
        keputusan.classList.add("sederhana");
        ulasan = "Baik. Teruskan membuat latihan.";
      } else {
        keputusan.classList.add("rendah");
        ulasan = "Anda perlu membuat ulang kaji semula.";
      }

      keputusan.innerHTML = `
        Markah anda: ${markah}/${jumlahSoalan}<br>
        Peratus: ${peratus}%<br><br>
        ${ulasan}
      `;

      document.getElementById("semak").style.display = "none";
      document.getElementById("ulang").style.display = "block";

      keputusan.scrollIntoView({
        behavior: "smooth"
      });
    }

    function ulangKuiz() {
      document.getElementById("borangKuiz").reset();

      const keputusan = document.getElementById("keputusan");
      keputusan.style.display = "none";

      document.getElementById("semak").style.display = "block";
      document.getElementById("ulang").style.display = "none";

      window.scrollTo({
        top: 0,
        behavior: "smooth"
      });
    }
  </script>

</body>
</html>
