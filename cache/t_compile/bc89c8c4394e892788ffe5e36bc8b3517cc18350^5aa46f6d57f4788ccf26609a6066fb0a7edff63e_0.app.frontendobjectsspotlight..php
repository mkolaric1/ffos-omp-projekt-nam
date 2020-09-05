<?php
/* Smarty version 3.1.34-dev-7, created on 2020-09-05 16:39:44
  from 'app:frontendobjectsspotlight.' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.34-dev-7',
  'unifunc' => 'content_5f53a330ccdea5_17996221',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '5aa46f6d57f4788ccf26609a6066fb0a7edff63e' => 
    array (
      0 => 'app:frontendobjectsspotlight.',
      1 => 1599301083,
      2 => 'app',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5f53a330ccdea5_17996221 (Smarty_Internal_Template $_smarty_tpl) {
?><div class="obj_spotlight <?php echo $_smarty_tpl->tpl_vars['hasCoverImage']->value;?>
 <?php echo $_smarty_tpl->tpl_vars['type']->value;?>
">

	<?php if ($_smarty_tpl->tpl_vars['coverImage']->value) {?>
		<a class="cover_image" href="<?php echo $_smarty_tpl->tpl_vars['targetUrl']->value;?>
">
			<img alt="<?php echo (($tmp = @call_user_func_array($_smarty_tpl->registered_plugins[ 'modifier' ][ 'escape' ][ 0 ], array( preg_replace('!<[^>]*?>!', ' ', $_smarty_tpl->tpl_vars['item']->value->getLocalizedFullTitle()) )))===null||$tmp==='' ? '' : $tmp);?>
" src="<?php echo $_smarty_tpl->tpl_vars['coverImageUrl']->value;?>
">
		</a>
	<?php }?>

	<div class="call_to_action">
		<h3 class="title">
			<?php echo call_user_func_array($_smarty_tpl->registered_plugins[ 'modifier' ][ 'escape' ][ 0 ], array( $_smarty_tpl->tpl_vars['spotlight']->value->getLocalizedTitle() ));?>

		</h3>
		<div class="type">
			<?php if ($_smarty_tpl->tpl_vars['assocType']->value == @constant('SPOTLIGHT_TYPE_SERIES')) {?>
				<?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['translate'][0], array( array('key'=>"series.series"),$_smarty_tpl ) );?>

			<?php } else { ?>
				<?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['translate'][0], array( array('key'=>"spotlight"),$_smarty_tpl ) );?>

			<?php }?>
		</div>
		<?php if ($_smarty_tpl->tpl_vars['description']->value) {?>
		<div class="description">
			<?php echo call_user_func_array($_smarty_tpl->registered_plugins[ 'modifier' ][ 'strip_unsafe_html' ][ 0 ], array( $_smarty_tpl->tpl_vars['description']->value ));?>

		</div>
		<?php }?>
		<a class="read_more" href="<?php echo $_smarty_tpl->tpl_vars['targetUrl']->value;?>
" title="<?php echo call_user_func_array($_smarty_tpl->registered_plugins[ 'modifier' ][ 'escape' ][ 0 ], array( call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['translate'][0], array( array('key'=>"common.readMoreWithTitle",'title'=>$_smarty_tpl->tpl_vars['spotlight']->value->getLocalizedTitle()),$_smarty_tpl ) ) ));?>
">
			<?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['translate'][0], array( array('key'=>"common.readMore"),$_smarty_tpl ) );?>

		</a>
	</div>
</div>
<?php }
}
