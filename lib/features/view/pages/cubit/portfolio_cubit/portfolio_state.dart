abstract class PortfolioState {}

class PortfolioInitial extends PortfolioState {}

class PortfolioLoading extends PortfolioState {}

class PortfolioSuccess extends PortfolioState {}

class PortfolioFailure extends PortfolioState {
  String errorMessage;
  PortfolioFailure( this.errorMessage);
}
