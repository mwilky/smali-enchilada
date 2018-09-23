.class public Lcom/android/server/OemSceneGameModeView;
.super Landroid/widget/RelativeLayout;
.source "OemSceneGameModeView.java"


# instance fields
.field protected mAnimate:Z

.field protected mContext:Landroid/content/Context;

.field protected mIsViewAdded:Z

.field protected mPanel:Lcom/android/server/OemSceneGameModePanel;

.field protected mViewRoot:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/android/server/OemSceneGameModePanel;Z)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/OemSceneGameModeView;->mIsViewAdded:Z

    iput-boolean v0, p0, Lcom/android/server/OemSceneGameModeView;->mAnimate:Z

    iput-object p1, p0, Lcom/android/server/OemSceneGameModeView;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/server/OemSceneGameModeView;->mPanel:Lcom/android/server/OemSceneGameModePanel;

    iput-boolean p4, p0, Lcom/android/server/OemSceneGameModeView;->mAnimate:Z

    iget-object v0, p0, Lcom/android/server/OemSceneGameModeView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/server/OemSceneGameModeView;->mViewRoot:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/android/server/OemSceneGameModeView;->updateView()V

    return-void
.end method


# virtual methods
.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/android/server/OemSceneGameModeView;->mPanel:Lcom/android/server/OemSceneGameModePanel;

    invoke-virtual {v0}, Lcom/android/server/OemSceneGameModePanel;->configurationChanged()V

    return-void
.end method

.method public updateView()V
    .locals 0

    return-void
.end method
