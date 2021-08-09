class NASAAPODModel {
/*
{
  "copyright": "Tomas SlovinskySlovakiaPetr HoralekCzech RepublicInstitute of Physics in Opava",
  "date": "2021-08-09",
  "explanation": "What's the best way to watch a meteor shower?  This question might come up later this week when the annual Perseid Meteor Shower peaks. One thing that is helpful is a dark sky, as demonstrated in the featured composite image of last year's Perseids.  Many more faint meteors are visible on the left image, taken through a very dark sky in Slovakia, than on the right image, taken through a moderately dark sky in the Czech Republic.  The band of the Milky Way Galaxy bridges the two coordinated images, while the meteor shower radiant in the constellation of Perseus is clearly visible on the left. In sum, many faint meteors are lost through a bright sky. Light pollution is shrinking areas across our Earth with dark skies, although inexpensive ways to combat this might be implemented.    Notable Perseids Submissions to APOD: 2018, 2019, 2020",
  "hdurl": "https://apod.nasa.gov/apod/image/2108/PerseidsLost_SlovinskyHoralek_2048.jpg",
  "media_type": "image",
  "service_version": "v1",
  "title": "Perseus and the Lost Meteors",
  "url": "https://apod.nasa.gov/apod/image/2108/PerseidsLost_SlovinskyHoralek_1080.jpg"
} 
*/

  String? copyright;
  String? date;
  String? explanation;
  String? hdurl;
  String? mediaType;
  String? serviceVersion;
  String? title;
  String? url;

  NASAAPODModel({
    this.copyright,
    this.date,
    this.explanation,
    this.hdurl,
    this.mediaType,
    this.serviceVersion,
    this.title,
    this.url,
  });
  NASAAPODModel.fromJson(Map<String, dynamic> json) {
    copyright = json["copyright"]?.toString();
    date = json["date"]?.toString();
    explanation = json["explanation"]?.toString();
    hdurl = json["hdurl"]?.toString();
    mediaType = json["media_type"]?.toString();
    serviceVersion = json["service_version"]?.toString();
    title = json["title"]?.toString();
    url = json["url"]?.toString();
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data["copyright"] = copyright;
    data["date"] = date;
    data["explanation"] = explanation;
    data["hdurl"] = hdurl;
    data["media_type"] = mediaType;
    data["service_version"] = serviceVersion;
    data["title"] = title;
    data["url"] = url;
    return data;
  }
}
