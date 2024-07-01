part of 'indecators_bloc.dart';


abstract class IndecatorsState {}

final class IndecatorsInitialState extends IndecatorsState {}
final class ChangeIndecatorsSuccessfully extends IndecatorsState{}
final class ChangeIndecatorsError extends IndecatorsState{}
final class ChangeIndecatorsLoading extends IndecatorsState{}
final class DaragSuccessfully extends IndecatorsState{}
final class DaragError extends IndecatorsState{}
final class DaragLoading extends IndecatorsState{}
