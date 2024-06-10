import 'package:learn_video/model/video.dart';

class Datas {

  Video video1 = Video(
    title: "La foret",
    thumbString: "https://v3.cdnpk.net/videvo_files/video/free/2016-01/thumbnails/Forest_15_4_Videvo_large.jpg",
    urlVideo: "https://v3.cdnpk.net/videvo_files/video/free/2016-01/large_preview/Forest_15_4_Videvo.mp4",
  );

  Video video2 = Video(
      title: "Des étoiles",
      thumbString: "https://v3.cdnpk.net/videvo_files/video/free/2012-07/thumbnails/hd0934_large.jpg",
      urlVideo: "https://v3.cdnpk.net/videvo_files/video/free/2012-07/large_preview/hd0934.mp4"
  );

  Video video3 = Video(
      title: "De la pluie",
      thumbString: "https://v3.cdnpk.net/videvo_files/video/free/2014-12/thumbnails/Raindrops_Videvo_large.jpg",
      urlVideo: "https://v3.cdnpk.net/videvo_files/video/free/2014-12/large_preview/Raindrops_Videvo.mp4"
  );

  Video video4 = Video(
      title: "Chronomètre",
      thumbString: "https://videocdn.cdnpk.net/euphony/content/video/partners0499/thumbnails/he1e2fc69_3121560_large.jpg",
      urlVideo: "https://videocdn.cdnpk.net/euphony/content/video/partners0499/large_watermarked/he1e2fc69_3121560_preview.mp4"
  );

  // Video video5 = Video(
  //     title: "Voyage à New York",
  //     thumbString: "https://cdn.videvo.net/videvo_files/video/free/2016-09/thumbnails/160820_001_NYC_Train_1080p_small.jpg",
  //     urlVideo: "https://cdn.videvo.net/videvo_files/video/free/2016-09/small_watermarked/160820_001_NYC_Train_1080p_preview.mp4"
  // );
  //
  // Video video6 = Video(
  //     title: "Bodyboard time",
  //     thumbString: "https://cdn.videvo.net/videvo_files/video/free/video0271/thumbnails/000936448-hawaii-big-island-good-surfer_small.jpg",
  //     urlVideo: "https://cdn.videvo.net/videvo_files/video/free/video0271/small_watermarked/000936448-hawaii-big-island-good-surfer_preview.mp4"
  // );
  //
  // Video video7 = Video(
  //     title: "Tu veux ma photo?",
  //     thumbString: "https://cdn.videvo.net/videvo_files/video/free/2014-07/thumbnails/Sheep_CU_small.jpg",
  //     urlVideo: "https://cdn.videvo.net/videvo_files/video/free/2014-07/small_watermarked/Sheep_CU_preview.mp4"
  // );
  //
  // Video video8 = Video(
  //     title: "Coucher de soleil",
  //     thumbString: "https://cdn.videvo.net/videvo_files/video/free/video0273/thumbnails/000987163-waikiki-sunset_small.jpg",
  //     urlVideo: "https://cdn.videvo.net/videvo_files/video/free/video0273/small_watermarked/000987163-waikiki-sunset_preview.mp4"
  // );
  //
  // Video video9 = Video(
  //     title: "Ik Hou van Holland",
  //     thumbString: "https://cdn.videvo.net/videvo_files/video/free/video0280/thumbnails/018176728-netherlands-kinderdijk-two-win_small.jpg",
  //     urlVideo: "https://cdn.videvo.net/videvo_files/video/free/video0280/small_watermarked/018176728-netherlands-kinderdijk-two-win_preview.mp4"
  // );
  //
  // Video video10 = Video(
  //     title: "Time to Code",
  //     thumbString: "https://cdn.videvo.net/videvo_files/video/free/2015-03/thumbnails/Laptop_1_Videvo_small.jpg",
  //     urlVideo: "https://cdn.videvo.net/videvo_files/video/free/2015-03/small_watermarked/Laptop_1_Videvo_preview.mp4"
  // );
  //
  // Video video11 = Video(
  //     title: "Il n'y a pas de fumée sans feu",
  //     thumbString: "https://cdn.videvo.net/videvo_files/video/free/2016-11/thumbnails/Smoke_Dark_11_Videvo_small.jpg",
  //     urlVideo: "https://cdn.videvo.net/videvo_files/video/free/2016-11/small_watermarked/Smoke_Dark_11_Videvo_preview.mp4"
  // );

  List<Video> parseVideos() {
    return [
      video1,
      video2,
      video3,
      video4,
      // video5,
      // video6,
      // video7,
      // video8,
      // video9,
      // video10,
      // video11
    ];
  }
}