import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gathabandhan/authentication/authentication.dart';

class DrawerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final AuthenticationBloc authenticationBloc =
        BlocProvider.of<AuthenticationBloc>(context);
    return Scaffold(
      body: Container(
          width: MediaQuery.of(context).size.width * 0.4,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            color: Colors.transparent,
            boxShadow: [
              BoxShadow(
                  color: const Color(0x29000000),
                  offset: Offset(300, 3),
                  blurRadius: 50)
            ],
          ),
          child: Column(
            children: [
              SizedBox(
                height: 40,
              ),
              InkWell(
                onTap: () => authenticationBloc.add(LoggedOut()),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    SvgPicture.string(
                        _shapeSVG_3b3762c0b02844759e5ff37e6432f845,
                        allowDrawingOutsideViewBox: true),
                    Text(
                      'Logout',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 25,
                        color: const Color(0xad000000),
                        fontWeight: FontWeight.w500,
                        height: 0.76,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    SvgPicture.string(
                      _shapeSVG_f1a386d578274ef4805da7deb17b1cc1,
                      allowDrawingOutsideViewBox: true,
                    ),
                    Text(
                      'Setting',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 25,
                        color: const Color(0xad000000),
                        fontWeight: FontWeight.w500,
                        height: 0.76,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    SvgPicture.string(
                      _shapeSVG_8c345d57048b487b88cce8d36088124d,
                      allowDrawingOutsideViewBox: true,
                    ),
                    Text(
                      'Search',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 25,
                        color: const Color(0xad000000),
                        fontWeight: FontWeight.w500,
                        height: 0.76,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    SvgPicture.string(
                      _shapeSVG_cb1bae790ea64135a25b7ce33b403887,
                      allowDrawingOutsideViewBox: true,
                    ),
                    Text(
                      'Home',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 25,
                        color: const Color(0xad000000),
                        fontWeight: FontWeight.w500,
                        height: 0.76,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  SvgPicture.string(
                    _shapeSVG_a96ff908ece746f585cd464aa160e991,
                    allowDrawingOutsideViewBox: true,
                  ),
                  Text(
                    'Chat',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 25,
                      color: const Color(0xad000000),
                      fontWeight: FontWeight.w500,
                      height: 0.76,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ],
              ))
            ],
          )),
    );
  }
}

const String _shapeSVG_a96ff908ece746f585cd464aa160e991 =
    '<svg viewBox="9.8 27.0 27.7 186.8" ><path transform="translate(14.5, 190.8)" d="M 5 3 L 21 3 C 22.10000038146973 3 22.9900016784668 3.900000095367432 22.9900016784668 5 L 23 23 L 19 19 L 5 19 C 3.900000095367432 19 3 18.10000038146973 3 17 L 3 5 C 3 3.900000095367432 3.900000095367432 3 5 3 Z M 19 10 L 7 10 L 7 12 L 19 12 L 19 10 Z M 11 15 L 19 15 L 19 13 L 11 13 L 11 15 Z M 7 9 L 19 9 L 19 7 L 7 7 L 7 9 Z" fill="#d23838" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _shapeSVG_3b3762c0b02844759e5ff37e6432f845 =
    '<svg viewBox="18.4 304.6 20.0 17.5" ><path transform="translate(18.42, 304.61)" d="M 7.500000953674316 0 L 7.500000953674316 2.499999761581421 L 17.50000190734863 2.499999761581421 L 17.50000190734863 15 L 7.500000953674316 15 L 7.500000953674316 17.5 L 20 17.5 L 20 0 L 7.500000953674316 0 Z M 5 4.999999523162842 L 0 8.75 L 5 12.49999904632568 L 5 9.999999046325684 L 15.00000190734863 9.999999046325684 L 15.00000190734863 7.5 L 5 7.5 L 5 4.999999523162842 Z" fill="#d23838" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _shapeSVG_f1a386d578274ef4805da7deb17b1cc1 =
    '<svg viewBox="17.9 244.5 20.0 20.0" ><path transform="translate(9.9, 236.53)" d="M 22.5 18 C 22.5 20.48528099060059 20.48528099060059 22.5 18 22.5 C 15.51471900939941 22.5 13.5 20.48528099060059 13.5 18 C 13.5 15.51471900939941 15.51471900939941 13.5 18 13.5 C 20.48528099060059 13.5 22.5 15.51471900939941 22.5 18 Z" fill="none" stroke="#d23838" stroke-width="3" stroke-linecap="round" stroke-linejoin="round" /><path transform="translate(16.4, 243.03)" d="M 18.22727584838867 14.22727394104004 C 17.97968673706055 14.78826427459717 18.09848594665527 15.44346809387207 18.52727317810059 15.88181972503662 L 18.58182144165039 15.93636417388916 C 18.9232349395752 16.27740097045898 19.11507034301758 16.74016761779785 19.11507034301758 17.22273063659668 C 19.11507034301758 17.70529174804688 18.9232349395752 18.16806030273438 18.58182144165039 18.50909233093262 C 18.24078941345215 18.85050582885742 17.77802276611328 19.0423412322998 17.29545974731445 19.0423412322998 C 16.81289863586426 19.0423412322998 16.35013008117676 18.85050582885742 16.00909614562988 18.50909233093262 L 15.95454692840576 18.45454597473145 C 15.51619720458984 18.02575874328613 14.86099338531494 17.90695953369141 14.30000305175781 18.1545467376709 C 13.75048637390137 18.39006233215332 13.39329719543457 18.92941665649414 13.39091110229492 19.52727317810059 L 13.39091110229492 19.68181991577148 C 13.39091110229492 20.68597221374512 12.57688426971436 21.50000190734863 11.57272911071777 21.50000190734863 C 10.56857490539551 21.50000190734863 9.754547119140625 20.68597221374512 9.754547119140625 19.68181991577148 L 9.754547119140625 19.60000228881836 C 9.740143775939941 18.98424911499023 9.35079288482666 18.43987846374512 8.772727966308594 18.2272777557373 C 8.211737632751465 17.97968673706055 7.556533813476563 18.09848594665527 7.11818265914917 18.52727508544922 L 7.063636779785156 18.58182144165039 C 6.722604274749756 18.9232349395752 6.259835720062256 19.11507034301758 5.777273654937744 19.11507034301758 C 5.294711112976074 19.11507034301758 4.831943511962891 18.9232349395752 4.490910530090332 18.58182144165039 C 4.149497985839844 18.24078750610352 3.957662343978882 17.77802276611328 3.957662343978882 17.29545974731445 C 3.957662343978882 16.81289672851563 4.149497985839844 16.35013008117676 4.490910053253174 16.00909614562988 L 4.545455455780029 15.95454692840576 C 4.974241733551025 15.51619720458984 5.093042373657227 14.86099338531494 4.845455646514893 14.30000305175781 C 4.609939098358154 13.75048446655273 4.07058572769165 13.39329719543457 3.47272777557373 13.39091300964355 L 3.318181991577148 13.39091110229492 C 2.314027786254883 13.39091110229492 1.50000011920929 12.57688426971436 1.50000011920929 11.57272911071777 C 1.50000011920929 10.56857490539551 2.314028024673462 9.754547119140625 3.318182229995728 9.754547119140625 L 3.400000333786011 9.754547119140625 C 4.015755176544189 9.740144729614258 4.560123920440674 9.350794792175293 4.772728443145752 8.772727966308594 C 5.020315170288086 8.211736679077148 4.901514530181885 7.556533813476563 4.47272777557373 7.11818265914917 L 4.418182373046875 7.063636779785156 C 4.076770305633545 6.722604274749756 3.884934186935425 6.259836196899414 3.884934186935425 5.777274131774902 C 3.884934186935425 5.294711112976074 4.076769828796387 4.831943035125732 4.418182373046875 4.490909576416016 C 4.759215831756592 4.149497509002686 5.221983909606934 3.957661390304565 5.704546451568604 3.957661867141724 C 6.187108039855957 3.957661867141724 6.649876117706299 4.149497509002686 6.990909099578857 4.490910053253174 L 7.045454978942871 4.545455455780029 C 7.483806610107422 4.974242210388184 8.139009475708008 5.093042373657227 8.699999809265137 4.845455646514893 L 8.772727966308594 4.845455646514893 C 9.322246551513672 4.609938621520996 9.679433822631836 4.070585250854492 9.681818008422852 3.47272777557373 L 9.681818008422852 3.318181991577148 C 9.681818008422852 2.314027786254883 10.49584579467773 1.49999988079071 11.5 1.50000011920929 C 12.50415515899658 1.50000011920929 13.31818294525146 2.314027786254883 13.31818294525146 3.318181991577148 L 13.31818294525146 3.400000333786011 C 13.32056713104248 3.997858285903931 13.67775630950928 4.537211894989014 14.22727489471436 4.772728443145752 C 14.78826522827148 5.020316123962402 15.44346809387207 4.901515483856201 15.88181972503662 4.472728252410889 L 15.93636417388916 4.418182373046875 C 16.27740097045898 4.076770305633545 16.74016761779785 3.884935140609741 17.22273063659668 3.884935140609741 C 17.70529174804688 3.884935140609741 18.16806030273438 4.076770782470703 18.50909233093262 4.418182373046875 C 18.85050582885742 4.75921630859375 19.0423412322998 5.221983909606934 19.0423412322998 5.704546451568604 C 19.0423412322998 6.187108516693115 18.85050582885742 6.649876117706299 18.50909233093262 6.990909576416016 L 18.45454597473145 7.045455455780029 C 18.02575874328613 7.483806133270264 17.90695953369141 8.139009475708008 18.1545467376709 8.700000762939453 L 18.1545467376709 8.772727966308594 C 18.39006233215332 9.322246551513672 18.92941665649414 9.679433822631836 19.52727317810059 9.681818008422852 L 19.68181991577148 9.681818008422852 C 20.68597221374512 9.681818008422852 21.50000190734863 10.49584579467773 21.50000190734863 11.5 C 21.50000190734863 12.50415515899658 20.68597221374512 13.31818294525146 19.68181991577148 13.31818294525146 L 19.60000228881836 13.31818294525146 C 19.00214576721191 13.3205680847168 18.46279335021973 13.67775630950928 18.2272777557373 14.22727489471436 Z" fill="none" stroke="#d23838" stroke-width="3" stroke-linecap="round" stroke-linejoin="round" /></svg>';
const String _shapeSVG_8c345d57048b487b88cce8d36088124d =
    '<svg viewBox="18.0 134.1 20.0 20.0" ><path transform="translate(18.0, 134.05)" d="M 19.72800445556641 17.29423332214355 L 15.83318901062012 13.39941692352295 C 15.657395362854 13.22362327575684 15.41909599304199 13.1259593963623 15.16907787322998 13.1259593963623 L 14.53231239318848 13.1259593963623 C 15.61051559448242 11.74695301055908 16.25118827819824 10.01245021820068 16.25118827819824 8.125594139099121 C 16.25118827819824 3.636984825134277 12.61420440673828 0 8.125594139099121 0 C 3.63698410987854 0 0 3.636984825134277 0 8.125594139099121 C 0 12.61420440673828 3.636984825134277 16.25118827819824 8.125594139099121 16.25118827819824 C 10.01245021820068 16.25118827819824 11.74695301055908 15.61051559448242 13.1259593963623 14.53231239318848 L 13.1259593963623 15.16907787322998 C 13.1259593963623 15.41909599304199 13.22362327575684 15.657395362854 13.39941692352295 15.83318901062012 L 17.29423332214355 19.72800445556641 C 17.66144752502441 20.0952205657959 18.25524139404297 20.0952205657959 18.61854934692383 19.72800445556641 L 19.72409820556641 18.6224536895752 C 20.0913143157959 18.25523948669434 20.0913143157959 17.66144752502441 19.72800445556641 17.29423332214355 Z M 8.125594139099121 13.1259593963623 C 5.363673210144043 13.1259593963623 3.125228404998779 10.8914213180542 3.125228404998779 8.125594139099121 C 3.125228404998779 5.363673210144043 5.359766960144043 3.125228404998779 8.125594139099121 3.125228404998779 C 10.8875150680542 3.125228404998779 13.1259593963623 5.359766960144043 13.1259593963623 8.125594139099121 C 13.1259593963623 10.8875150680542 10.8914213180542 13.1259593963623 8.125594139099121 13.1259593963623 Z" fill="#d23838" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _shapeSVG_cb1bae790ea64135a25b7ce33b403887 =
    '<svg viewBox="18.0 84.0 20.0 15.6" ><path transform="translate(18.0, 81.75)" d="M 9.733767509460449 6.288270950317383 L 3.332529067993164 11.56043148040771 L 3.332529067993164 17.25061225891113 C 3.332529067993164 17.55741310119629 3.581240653991699 17.80612564086914 3.888041496276855 17.80612564086914 L 7.778711795806885 17.79605674743652 C 8.084427833557129 17.79452896118164 8.331450462341309 17.5462646484375 8.331446647644043 17.24054527282715 L 8.331446647644043 13.91753959655762 C 8.331446647644043 13.61073875427246 8.580157279968262 13.36202812194824 8.886959075927734 13.36202812194824 L 11.10900783538818 13.36202812194824 C 11.41580867767334 13.36202812194824 11.66452026367188 13.61073875427246 11.66452026367188 13.91753959655762 L 11.66452026367188 17.23811340332031 C 11.66405868530273 17.38574409484863 11.72238159179688 17.52748680114746 11.82661056518555 17.63204383850098 C 11.93083953857422 17.73659706115723 12.07240009307861 17.79536247253418 12.22003269195557 17.79536247253418 L 16.10931396484375 17.80612564086914 C 16.41611480712891 17.80612564086914 16.66482734680176 17.55741310119629 16.66482734680176 17.25061225891113 L 16.66482734680176 11.55661201477051 L 10.26497650146484 6.288270950317383 C 10.10995197296143 6.163313865661621 9.888792037963867 6.163313865661621 9.733767509460449 6.288270950317383 Z M 19.84513473510742 9.871673583984375 L 16.94258308410645 7.479150772094727 L 16.94258308410645 2.6701500415802 C 16.94258308410645 2.440049171447754 16.75605010986328 2.253515720367432 16.52594947814941 2.253515720367432 L 14.58165550231934 2.253515720367432 C 14.35155391693115 2.253515720367432 14.16501998901367 2.440049171447754 14.16501998901367 2.6701500415802 L 14.16501998901367 5.191133975982666 L 11.05658149719238 2.633694171905518 C 10.44137763977051 2.127443313598633 9.553894996643066 2.127443313598633 8.938691139221191 2.633694171905518 L 0.1501374989748001 9.871673583984375 C -0.02729731053113937 10.01832866668701 -0.05217362195253372 10.28108692169189 0.09458637237548828 10.45843505859375 L 0.9799342155456543 11.53473949432373 C 1.050217628479004 11.62020111083984 1.151610136032104 11.6741943359375 1.261749625205994 11.68481063842773 C 1.371889233589172 11.69542598724365 1.481728076934814 11.66179466247559 1.567041516304016 11.59133243560791 L 9.733767509460449 4.864770412445068 C 9.888792037963867 4.739813804626465 10.10995197296143 4.739813804626465 10.26497745513916 4.864771366119385 L 18.43205070495605 11.59133243560791 C 18.60939979553223 11.73809146881104 18.87215805053711 11.71321487426758 19.01881217956543 11.53578090667725 L 19.90415954589844 10.45947551727295 C 19.97456169128418 10.37381649017334 20.00791549682617 10.26362800598145 19.9968376159668 10.15330600738525 C 19.98576164245605 10.04298210144043 19.93116569519043 9.941625595092773 19.84513854980469 9.871673583984375 Z" fill="#d23838" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';