<!-- Form -->
{!!Form::open(['url' => '/hotels/'.$hotels->id, 'method' => 'DELETE', 'class' => 'inline-block']) !!}
  <input type="submit" class="btn btn-dancer col-xs-12 red-text no-padding no-margin no-transform" name="" value="Delete">
{!! Form::close() !!}