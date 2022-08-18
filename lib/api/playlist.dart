import 'package:cm_music_app/api/request_util.dart';
import '../model/playlist.dart';

const String prefix = '/playlists/';

Future<Playlist> detail(id) async {
  final response = await RequestUtil.get(prefix + id);
  return Playlist.fromJson(response);
}