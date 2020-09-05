<?php
/* Smarty version 3.1.34-dev-7, created on 2020-09-05 16:39:44
  from 'plugins-plugins-blocks-browse-blocks-browse:block.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.34-dev-7',
  'unifunc' => 'content_5f53a330da1841_39869090',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '6ecbf3639635193a6f381d487d1bc9dc4e653557' => 
    array (
      0 => 'plugins-plugins-blocks-browse-blocks-browse:block.tpl',
      1 => 1599301063,
      2 => 'plugins-plugins-blocks-browse-blocks-browse',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5f53a330da1841_39869090 (Smarty_Internal_Template $_smarty_tpl) {
?><div class="pkp_block block_browse">
	<span class="title">
		<?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['translate'][0], array( array('key'=>"plugins.block.browse"),$_smarty_tpl ) );?>

	</span>

	<nav class="content" role="navigation" aria-label="<?php echo call_user_func_array($_smarty_tpl->registered_plugins[ 'modifier' ][ 'escape' ][ 0 ], array( call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['translate'][0], array( array('key'=>"plugins.block.browse"),$_smarty_tpl ) ) ));?>
">
		<ul>

			<?php if ($_smarty_tpl->tpl_vars['browseNewReleases']->value) {?>
				<li>
					<a href="<?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['url'][0], array( array('router'=>@constant('ROUTE_PAGE'),'page'=>"catalog",'op'=>"newReleases"),$_smarty_tpl ) );?>
">
						<?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['translate'][0], array( array('key'=>"navigation.newReleases"),$_smarty_tpl ) );?>

					</a>
				</li>
			<?php }?>

			<?php if ($_smarty_tpl->tpl_vars['browseCategoryFactory']->value && $_smarty_tpl->tpl_vars['browseCategoryFactory']->value->getCount()) {?>
				<li class="has_submenu">
					<?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['translate'][0], array( array('key'=>"plugins.block.browse.category"),$_smarty_tpl ) );?>

					<ul>
						<?php $_block_plugin1 = isset($_smarty_tpl->smarty->registered_plugins['block']['iterate'][0][0]) ? $_smarty_tpl->smarty->registered_plugins['block']['iterate'][0][0] : null;
if (!is_callable(array($_block_plugin1, 'smartyIterate'))) {
throw new SmartyException('block tag \'iterate\' not callable or registered');
}
$_smarty_tpl->smarty->_cache['_tag_stack'][] = array('iterate', array('from'=>'browseCategoryFactory','item'=>'browseCategory'));
$_block_repeat=true;
echo $_block_plugin1->smartyIterate(array('from'=>'browseCategoryFactory','item'=>'browseCategory'), null, $_smarty_tpl, $_block_repeat);
while ($_block_repeat) {
ob_start();?>
							<li class="category_<?php echo $_smarty_tpl->tpl_vars['browseCategory']->value->getId();
if ($_smarty_tpl->tpl_vars['browseCategory']->value->getParentId()) {?> is_sub<?php }
if ($_smarty_tpl->tpl_vars['browseBlockSelectedCategory']->value == $_smarty_tpl->tpl_vars['browseCategory']->value->getPath()) {?> current<?php }?>">
								<a href="<?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['url'][0], array( array('router'=>@constant('ROUTE_PAGE'),'page'=>"catalog",'op'=>"category",'path'=>call_user_func_array($_smarty_tpl->registered_plugins[ 'modifier' ][ 'escape' ][ 0 ], array( $_smarty_tpl->tpl_vars['browseCategory']->value->getPath() ))),$_smarty_tpl ) );?>
">
									<?php echo call_user_func_array($_smarty_tpl->registered_plugins[ 'modifier' ][ 'escape' ][ 0 ], array( $_smarty_tpl->tpl_vars['browseCategory']->value->getLocalizedTitle() ));?>

								</a>
							</li>
						<?php $_block_repeat=false;
echo $_block_plugin1->smartyIterate(array('from'=>'browseCategoryFactory','item'=>'browseCategory'), ob_get_clean(), $_smarty_tpl, $_block_repeat);
}
array_pop($_smarty_tpl->smarty->_cache['_tag_stack']);?>
					</ul>
				</li>
			<?php }?>

			<?php if ($_smarty_tpl->tpl_vars['browseSeriesFactory']->value && $_smarty_tpl->tpl_vars['browseSeriesFactory']->value->getCount()) {?>
				<li class="has_submenu">
					<?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['translate'][0], array( array('key'=>"plugins.block.browse.series"),$_smarty_tpl ) );?>

					<ul>
						<?php $_block_plugin2 = isset($_smarty_tpl->smarty->registered_plugins['block']['iterate'][0][0]) ? $_smarty_tpl->smarty->registered_plugins['block']['iterate'][0][0] : null;
if (!is_callable(array($_block_plugin2, 'smartyIterate'))) {
throw new SmartyException('block tag \'iterate\' not callable or registered');
}
$_smarty_tpl->smarty->_cache['_tag_stack'][] = array('iterate', array('from'=>'browseSeriesFactory','item'=>'browseSeriesItem'));
$_block_repeat=true;
echo $_block_plugin2->smartyIterate(array('from'=>'browseSeriesFactory','item'=>'browseSeriesItem'), null, $_smarty_tpl, $_block_repeat);
while ($_block_repeat) {
ob_start();?>
							<li class="series_<?php echo $_smarty_tpl->tpl_vars['browseSeriesItem']->value->getId();
if ($_smarty_tpl->tpl_vars['browseBlockSelectedSeries']->value == $_smarty_tpl->tpl_vars['browseSeriesItem']->value->getPath() && $_smarty_tpl->tpl_vars['browseBlockSelectedSeries']->value != '') {?> current<?php }?>">
								<a href="<?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['url'][0], array( array('router'=>@constant('ROUTE_PAGE'),'page'=>"catalog",'op'=>"series",'path'=>call_user_func_array($_smarty_tpl->registered_plugins[ 'modifier' ][ 'escape' ][ 0 ], array( $_smarty_tpl->tpl_vars['browseSeriesItem']->value->getPath() ))),$_smarty_tpl ) );?>
">
									<?php echo call_user_func_array($_smarty_tpl->registered_plugins[ 'modifier' ][ 'escape' ][ 0 ], array( $_smarty_tpl->tpl_vars['browseSeriesItem']->value->getLocalizedTitle() ));?>

								</a>
							</li>
						<?php $_block_repeat=false;
echo $_block_plugin2->smartyIterate(array('from'=>'browseSeriesFactory','item'=>'browseSeriesItem'), ob_get_clean(), $_smarty_tpl, $_block_repeat);
}
array_pop($_smarty_tpl->smarty->_cache['_tag_stack']);?>
					</ul>
				</li>
			<?php }?>

		</ul>
	</nav>
</div><!-- .block_browse -->
<?php }
}
