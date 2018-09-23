.class public Lcom/android/settings/survey/SurveyMixin;
.super Ljava/lang/Object;
.source "SurveyMixin.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;


# instance fields
.field private mFragment:Landroid/app/Fragment;

.field private mName:Ljava/lang/String;

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/app/Fragment;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/settings/survey/SurveyMixin;->mName:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/settings/survey/SurveyMixin;->mFragment:Landroid/app/Fragment;

    return-void
.end method


# virtual methods
.method public onPause()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/survey/SurveyMixin;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/survey/SurveyMixin;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/survey/SurveyMixin;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v0, v1}, Lcom/android/settings/overlay/SurveyFeatureProvider;->unregisterReceiver(Landroid/app/Activity;Landroid/content/BroadcastReceiver;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/survey/SurveyMixin;->mReceiver:Landroid/content/BroadcastReceiver;

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 7

    iget-object v0, p0, Lcom/android/settings/survey/SurveyMixin;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    nop

    invoke-static {v0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/settings/overlay/FeatureFactory;->getSurveyFeatureProvider(Landroid/content/Context;)Lcom/android/settings/overlay/SurveyFeatureProvider;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/settings/survey/SurveyMixin;->mName:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Lcom/android/settings/overlay/SurveyFeatureProvider;->getSurveyId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/android/settings/overlay/SurveyFeatureProvider;->getSurveyExpirationDate(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-gtz v3, :cond_0

    invoke-interface {v1, v0}, Lcom/android/settings/overlay/SurveyFeatureProvider;->createAndRegisterReceiver(Landroid/app/Activity;)Landroid/content/BroadcastReceiver;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/survey/SurveyMixin;->mReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    invoke-interface {v1, v0, v2, v3}, Lcom/android/settings/overlay/SurveyFeatureProvider;->downloadSurvey(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-interface {v1, v0, v2}, Lcom/android/settings/overlay/SurveyFeatureProvider;->showSurveyIfAvailable(Landroid/app/Activity;Ljava/lang/String;)Z

    :cond_1
    :goto_0
    return-void
.end method
