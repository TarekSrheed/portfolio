import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/features/data/service/launch_service.dart';
import 'package:portfolio/features/view/pages/cubit/portfolio_cubit/portfolio_state.dart';

class PortfolioCubit extends Cubit<PortfolioState> {
  PortfolioCubit(this._lunchWeb) : super(PortfolioInitial());
  final LunchWeb _lunchWeb;

  Future<void> openSocialLink(BuildContext context, String url) async {
    emit(PortfolioLoading());
    try {
      await _lunchWeb.openWebsite(context, Uri.parse(url));
      emit(PortfolioSuccess());
    } catch (e) {
      emit(PortfolioFailure(e.toString()));
    }
  }
}
