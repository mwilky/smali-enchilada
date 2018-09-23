.class Lcom/android/settings/sound/AudioSwitchPreferenceController$MediaRouterCallback;
.super Landroid/media/MediaRouter$Callback;
.source "AudioSwitchPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/sound/AudioSwitchPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaRouterCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/sound/AudioSwitchPreferenceController;


# direct methods
.method private constructor <init>(Lcom/android/settings/sound/AudioSwitchPreferenceController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController$MediaRouterCallback;->this$0:Lcom/android/settings/sound/AudioSwitchPreferenceController;

    invoke-direct {p0}, Landroid/media/MediaRouter$Callback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/sound/AudioSwitchPreferenceController;Lcom/android/settings/sound/AudioSwitchPreferenceController$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/sound/AudioSwitchPreferenceController$MediaRouterCallback;-><init>(Lcom/android/settings/sound/AudioSwitchPreferenceController;)V

    return-void
.end method


# virtual methods
.method public onRouteAdded(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V
    .locals 2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/media/MediaRouter$RouteInfo;->isDefault()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController$MediaRouterCallback;->this$0:Lcom/android/settings/sound/AudioSwitchPreferenceController;

    iget-object v1, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController$MediaRouterCallback;->this$0:Lcom/android/settings/sound/AudioSwitchPreferenceController;

    iget-object v1, v1, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v1}, Lcom/android/settings/sound/AudioSwitchPreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    :cond_0
    return-void
.end method

.method public onRouteChanged(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V
    .locals 2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/media/MediaRouter$RouteInfo;->isDefault()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController$MediaRouterCallback;->this$0:Lcom/android/settings/sound/AudioSwitchPreferenceController;

    iget-object v1, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController$MediaRouterCallback;->this$0:Lcom/android/settings/sound/AudioSwitchPreferenceController;

    iget-object v1, v1, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v1}, Lcom/android/settings/sound/AudioSwitchPreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    :cond_0
    return-void
.end method

.method public onRouteGrouped(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;Landroid/media/MediaRouter$RouteGroup;I)V
    .locals 0

    return-void
.end method

.method public onRouteRemoved(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V
    .locals 0

    return-void
.end method

.method public onRouteSelected(Landroid/media/MediaRouter;ILandroid/media/MediaRouter$RouteInfo;)V
    .locals 0

    return-void
.end method

.method public onRouteUngrouped(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;Landroid/media/MediaRouter$RouteGroup;)V
    .locals 0

    return-void
.end method

.method public onRouteUnselected(Landroid/media/MediaRouter;ILandroid/media/MediaRouter$RouteInfo;)V
    .locals 0

    return-void
.end method

.method public onRouteVolumeChanged(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V
    .locals 0

    return-void
.end method
