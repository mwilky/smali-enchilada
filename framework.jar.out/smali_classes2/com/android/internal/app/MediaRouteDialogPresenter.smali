.class public abstract Lcom/android/internal/app/MediaRouteDialogPresenter;
.super Ljava/lang/Object;
.source "MediaRouteDialogPresenter.java"


# static fields
.field private static final CHOOSER_FRAGMENT_TAG:Ljava/lang/String; = "android.app.MediaRouteButton:MediaRouteChooserDialogFragment"

.field private static final CONTROLLER_FRAGMENT_TAG:Ljava/lang/String; = "android.app.MediaRouteButton:MediaRouteControllerDialogFragment"

.field private static final TAG:Ljava/lang/String; = "MediaRouter"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createDialog(Landroid/content/Context;ILandroid/view/View$OnClickListener;)Landroid/app/Dialog;
    .locals 4

    const-string/jumbo v0, "media_router"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaRouter;

    invoke-static {p0}, Lcom/android/internal/app/MediaRouteChooserDialog;->isLightTheme(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x1030132

    goto :goto_0

    :cond_0
    const v1, 0x103012e

    :goto_0
    invoke-virtual {v0}, Landroid/media/MediaRouter;->getSelectedRoute()Landroid/media/MediaRouter$RouteInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaRouter$RouteInfo;->isDefault()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v2, p1}, Landroid/media/MediaRouter$RouteInfo;->matchesTypes(I)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    new-instance v3, Lcom/android/internal/app/MediaRouteControllerDialog;

    invoke-direct {v3, p0, v1}, Lcom/android/internal/app/MediaRouteControllerDialog;-><init>(Landroid/content/Context;I)V

    return-object v3

    :cond_2
    :goto_1
    new-instance v3, Lcom/android/internal/app/MediaRouteChooserDialog;

    invoke-direct {v3, p0, v1}, Lcom/android/internal/app/MediaRouteChooserDialog;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v3, p1}, Lcom/android/internal/app/MediaRouteChooserDialog;->setRouteTypes(I)V

    invoke-virtual {v3, p2}, Lcom/android/internal/app/MediaRouteChooserDialog;->setExtendedSettingsClickListener(Landroid/view/View$OnClickListener;)V

    return-object v3
.end method

.method public static showDialogFragment(Landroid/app/Activity;ILandroid/view/View$OnClickListener;)Landroid/app/DialogFragment;
    .locals 6

    const-string/jumbo v0, "media_router"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaRouter;

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0}, Landroid/media/MediaRouter;->getSelectedRoute()Landroid/media/MediaRouter$RouteInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaRouter$RouteInfo;->isDefault()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_2

    invoke-virtual {v2, p1}, Landroid/media/MediaRouter$RouteInfo;->matchesTypes(I)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v3, "android.app.MediaRouteButton:MediaRouteControllerDialogFragment"

    invoke-virtual {v1, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string v3, "MediaRouter"

    const-string/jumbo v5, "showDialog(): Route controller dialog already showing!"

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :cond_1
    new-instance v3, Lcom/android/internal/app/MediaRouteControllerDialogFragment;

    invoke-direct {v3}, Lcom/android/internal/app/MediaRouteControllerDialogFragment;-><init>()V

    const-string v4, "android.app.MediaRouteButton:MediaRouteControllerDialogFragment"

    invoke-virtual {v3, v1, v4}, Lcom/android/internal/app/MediaRouteControllerDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-object v3

    :cond_2
    :goto_0
    const-string v3, "android.app.MediaRouteButton:MediaRouteChooserDialogFragment"

    invoke-virtual {v1, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v3

    if-eqz v3, :cond_3

    const-string v3, "MediaRouter"

    const-string/jumbo v5, "showDialog(): Route chooser dialog already showing!"

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :cond_3
    new-instance v3, Lcom/android/internal/app/MediaRouteChooserDialogFragment;

    invoke-direct {v3}, Lcom/android/internal/app/MediaRouteChooserDialogFragment;-><init>()V

    invoke-virtual {v3, p1}, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->setRouteTypes(I)V

    invoke-virtual {v3, p2}, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->setExtendedSettingsClickListener(Landroid/view/View$OnClickListener;)V

    const-string v4, "android.app.MediaRouteButton:MediaRouteChooserDialogFragment"

    invoke-virtual {v3, v1, v4}, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-object v3
.end method
