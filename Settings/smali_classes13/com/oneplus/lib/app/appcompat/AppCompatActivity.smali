.class public Lcom/oneplus/lib/app/appcompat/AppCompatActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "AppCompatActivity.java"

# interfaces
.implements Lcom/oneplus/lib/app/appcompat/AppCompatCallback;
.implements Landroid/support/v4/app/TaskStackBuilder$SupportParentable;
.implements Lcom/oneplus/lib/app/appcompat/ActionBarDrawerToggle$DelegateProvider;


# instance fields
.field private mDelegate:Lcom/oneplus/lib/app/appcompat/AppCompatDelegate;

.field private mEatKeyUpEvent:Z

.field private mResources:Landroid/content/res/Resources;

.field private mThemeId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatActivity;->mThemeId:I

    return-void
.end method


# virtual methods
.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/AppCompatActivity;->getDelegate()Lcom/oneplus/lib/app/appcompat/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegate;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v0

    and-int/lit16 v0, v0, -0x7001

    invoke-virtual {p1, v0}, Landroid/view/KeyEvent;->getUnicodeChar(I)I

    move-result v0

    const/16 v1, 0x3c

    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/AppCompatActivity;->getSupportActionBar()Lcom/oneplus/lib/app/appcompat/ActionBar;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/oneplus/lib/app/appcompat/ActionBar;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/oneplus/lib/app/appcompat/ActionBar;->requestFocus()Z

    move-result v3

    if-eqz v3, :cond_0

    iput-boolean v1, p0, Lcom/oneplus/lib/app/appcompat/AppCompatActivity;->mEatKeyUpEvent:Z

    return v1

    :cond_0
    goto :goto_0

    :cond_1
    if-ne v0, v1, :cond_2

    iget-boolean v2, p0, Lcom/oneplus/lib/app/appcompat/AppCompatActivity;->mEatKeyUpEvent:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/oneplus/lib/app/appcompat/AppCompatActivity;->mEatKeyUpEvent:Z

    return v1

    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/AppCompatActivity;->getDelegate()Lcom/oneplus/lib/app/appcompat/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegate;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getDelegate()Lcom/oneplus/lib/app/appcompat/AppCompatDelegate;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatActivity;->mDelegate:Lcom/oneplus/lib/app/appcompat/AppCompatDelegate;

    if-nez v0, :cond_0

    invoke-static {p0, p0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegate;->create(Landroid/app/Activity;Lcom/oneplus/lib/app/appcompat/AppCompatCallback;)Lcom/oneplus/lib/app/appcompat/AppCompatDelegate;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatActivity;->mDelegate:Lcom/oneplus/lib/app/appcompat/AppCompatDelegate;

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatActivity;->mDelegate:Lcom/oneplus/lib/app/appcompat/AppCompatDelegate;

    return-object v0
.end method

.method public getDrawerToggleDelegate()Lcom/oneplus/lib/app/appcompat/ActionBarDrawerToggle$Delegate;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/AppCompatActivity;->getDelegate()Lcom/oneplus/lib/app/appcompat/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegate;->getDrawerToggleDelegate()Lcom/oneplus/lib/app/appcompat/ActionBarDrawerToggle$Delegate;

    move-result-object v0

    return-object v0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 1

    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/AppCompatActivity;->getDelegate()Lcom/oneplus/lib/app/appcompat/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegate;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 2

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatActivity;->mResources:Landroid/content/res/Resources;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/oneplus/lib/app/appcompat/VectorEnabledTintResources;->shouldBeUsed()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/oneplus/lib/app/appcompat/VectorEnabledTintResources;

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/oneplus/lib/app/appcompat/VectorEnabledTintResources;-><init>(Landroid/content/Context;Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatActivity;->mResources:Landroid/content/res/Resources;

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatActivity;->mResources:Landroid/content/res/Resources;

    if-nez v0, :cond_1

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatActivity;->mResources:Landroid/content/res/Resources;

    :goto_0
    return-object v0
.end method

.method public getSupportActionBar()Lcom/oneplus/lib/app/appcompat/ActionBar;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/AppCompatActivity;->getDelegate()Lcom/oneplus/lib/app/appcompat/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegate;->getSupportActionBar()Lcom/oneplus/lib/app/appcompat/ActionBar;

    move-result-object v0

    return-object v0
.end method

.method public getSupportParentActivityIntent()Landroid/content/Intent;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    invoke-static {p0}, Landroid/support/v4/app/NavUtils;->getParentActivityIntent(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public invalidateOptionsMenu()V
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/AppCompatActivity;->getDelegate()Lcom/oneplus/lib/app/appcompat/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegate;->invalidateOptionsMenu()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/AppCompatActivity;->getDelegate()Lcom/oneplus/lib/app/appcompat/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegate;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatActivity;->mResources:Landroid/content/res/Resources;

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/AppCompatActivity;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1, p1, v0}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    :cond_0
    return-void
.end method

.method public onContentChanged()V
    .locals 0

    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/AppCompatActivity;->onSupportContentChanged()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/AppCompatActivity;->getDelegate()Lcom/oneplus/lib/app/appcompat/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegate;->installViewFactory()V

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegate;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegate;->applyDayNight()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/oneplus/lib/app/appcompat/AppCompatActivity;->mThemeId:I

    if-eqz v1, :cond_1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/AppCompatActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    iget v2, p0, Lcom/oneplus/lib/app/appcompat/AppCompatActivity;->mThemeId:I

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/oneplus/lib/app/appcompat/AppCompatActivity;->onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/oneplus/lib/app/appcompat/AppCompatActivity;->mThemeId:I

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/app/appcompat/AppCompatActivity;->setTheme(I)V

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateSupportNavigateUpTaskStack(Landroid/support/v4/app/TaskStackBuilder;)V
    .locals 0
    .param p1    # Landroid/support/v4/app/TaskStackBuilder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1, p0}, Landroid/support/v4/app/TaskStackBuilder;->addParentStack(Landroid/app/Activity;)Landroid/support/v4/app/TaskStackBuilder;

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/AppCompatActivity;->getDelegate()Lcom/oneplus/lib/app/appcompat/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegate;->onDestroy()V

    return-void
.end method

.method public final onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 3

    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/AppCompatActivity;->getSupportActionBar()Lcom/oneplus/lib/app/appcompat/ActionBar;

    move-result-object v0

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x102002c

    if-ne v1, v2, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/ActionBar;->getDisplayOptions()I

    move-result v1

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/AppCompatActivity;->onSupportNavigateUp()Z

    move-result v1

    return v1

    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onPanelClosed(ILandroid/view/Menu;)V

    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onPostCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/AppCompatActivity;->getDelegate()Lcom/oneplus/lib/app/appcompat/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegate;->onPostCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onPostResume()V
    .locals 1

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPostResume()V

    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/AppCompatActivity;->getDelegate()Lcom/oneplus/lib/app/appcompat/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegate;->onPostResume()V

    return-void
.end method

.method public onPrepareSupportNavigateUpTaskStack(Landroid/support/v4/app/TaskStackBuilder;)V
    .locals 0
    .param p1    # Landroid/support/v4/app/TaskStackBuilder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/AppCompatActivity;->getDelegate()Lcom/oneplus/lib/app/appcompat/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegate;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onStart()V
    .locals 1

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStart()V

    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/AppCompatActivity;->getDelegate()Lcom/oneplus/lib/app/appcompat/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegate;->onStart()V

    return-void
.end method

.method protected onStop()V
    .locals 1

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStop()V

    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/AppCompatActivity;->getDelegate()Lcom/oneplus/lib/app/appcompat/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegate;->onStop()V

    return-void
.end method

.method public onSupportActionModeFinished(Lcom/oneplus/lib/app/appcompat/ActionMode;)V
    .locals 0
    .param p1    # Lcom/oneplus/lib/app/appcompat/ActionMode;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    return-void
.end method

.method public onSupportActionModeStarted(Lcom/oneplus/lib/app/appcompat/ActionMode;)V
    .locals 0
    .param p1    # Lcom/oneplus/lib/app/appcompat/ActionMode;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    return-void
.end method

.method public onSupportContentChanged()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onSupportNavigateUp()Z
    .locals 3

    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/AppCompatActivity;->getSupportParentActivityIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/app/appcompat/AppCompatActivity;->supportShouldUpRecreateTask(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Landroid/support/v4/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/support/v4/app/TaskStackBuilder;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/app/appcompat/AppCompatActivity;->onCreateSupportNavigateUpTaskStack(Landroid/support/v4/app/TaskStackBuilder;)V

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/app/appcompat/AppCompatActivity;->onPrepareSupportNavigateUpTaskStack(Landroid/support/v4/app/TaskStackBuilder;)V

    invoke-virtual {v1}, Landroid/support/v4/app/TaskStackBuilder;->startActivities()V

    :try_start_0
    invoke-static {p0}, Landroid/support/v4/app/ActivityCompat;->finishAffinity(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/AppCompatActivity;->finish()V

    :goto_0
    goto :goto_1

    :cond_0
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/app/appcompat/AppCompatActivity;->supportNavigateUpTo(Landroid/content/Intent;)V

    :goto_1
    const/4 v1, 0x1

    return v1

    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method protected onTitleChanged(Ljava/lang/CharSequence;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onTitleChanged(Ljava/lang/CharSequence;I)V

    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/AppCompatActivity;->getDelegate()Lcom/oneplus/lib/app/appcompat/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegate;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onWindowStartingSupportActionMode(Lcom/oneplus/lib/app/appcompat/ActionMode$Callback;)Lcom/oneplus/lib/app/appcompat/ActionMode;
    .locals 1
    .param p1    # Lcom/oneplus/lib/app/appcompat/ActionMode$Callback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public setContentView(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/AppCompatActivity;->getDelegate()Lcom/oneplus/lib/app/appcompat/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegate;->setContentView(I)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/AppCompatActivity;->getDelegate()Lcom/oneplus/lib/app/appcompat/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegate;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/AppCompatActivity;->getDelegate()Lcom/oneplus/lib/app/appcompat/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegate;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setSupportActionBar(Lcom/oneplus/lib/widget/actionbar/Toolbar;)V
    .locals 1
    .param p1    # Lcom/oneplus/lib/widget/actionbar/Toolbar;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/AppCompatActivity;->getDelegate()Lcom/oneplus/lib/app/appcompat/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegate;->setSupportActionBar(Lcom/oneplus/lib/widget/actionbar/Toolbar;)V

    return-void
.end method

.method public setSupportProgress(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setSupportProgressBarIndeterminate(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setSupportProgressBarIndeterminateVisibility(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setSupportProgressBarVisibility(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setTheme(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->setTheme(I)V

    iput p1, p0, Lcom/oneplus/lib/app/appcompat/AppCompatActivity;->mThemeId:I

    return-void
.end method

.method public startSupportActionMode(Lcom/oneplus/lib/app/appcompat/ActionMode$Callback;)Lcom/oneplus/lib/app/appcompat/ActionMode;
    .locals 1
    .param p1    # Lcom/oneplus/lib/app/appcompat/ActionMode$Callback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/AppCompatActivity;->getDelegate()Lcom/oneplus/lib/app/appcompat/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegate;->startSupportActionMode(Lcom/oneplus/lib/app/appcompat/ActionMode$Callback;)Lcom/oneplus/lib/app/appcompat/ActionMode;

    move-result-object v0

    return-object v0
.end method

.method public supportInvalidateOptionsMenu()V
    .locals 1

    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/AppCompatActivity;->getDelegate()Lcom/oneplus/lib/app/appcompat/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegate;->invalidateOptionsMenu()V

    return-void
.end method

.method public supportNavigateUpTo(Landroid/content/Intent;)V
    .locals 0
    .param p1    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p0, p1}, Landroid/support/v4/app/NavUtils;->navigateUpTo(Landroid/app/Activity;Landroid/content/Intent;)V

    return-void
.end method

.method public supportRequestWindowFeature(I)Z
    .locals 1

    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/AppCompatActivity;->getDelegate()Lcom/oneplus/lib/app/appcompat/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegate;->requestWindowFeature(I)Z

    move-result v0

    return v0
.end method

.method public supportShouldUpRecreateTask(Landroid/content/Intent;)Z
    .locals 1
    .param p1    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p0, p1}, Landroid/support/v4/app/NavUtils;->shouldUpRecreateTask(Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method
