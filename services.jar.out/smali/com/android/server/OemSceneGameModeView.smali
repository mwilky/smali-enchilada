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
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layout"    # I
    .param p3, "panel"    # Lcom/android/server/OemSceneGameModePanel;
    .param p4, "animate"    # Z

    .line 24
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/OemSceneGameModeView;->mIsViewAdded:Z

    .line 20
    iput-boolean v0, p0, Lcom/android/server/OemSceneGameModeView;->mAnimate:Z

    .line 25
    iput-object p1, p0, Lcom/android/server/OemSceneGameModeView;->mContext:Landroid/content/Context;

    .line 26
    iput-object p3, p0, Lcom/android/server/OemSceneGameModeView;->mPanel:Lcom/android/server/OemSceneGameModePanel;

    .line 27
    iput-boolean p4, p0, Lcom/android/server/OemSceneGameModeView;->mAnimate:Z

    .line 28
    iget-object v0, p0, Lcom/android/server/OemSceneGameModeView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/server/OemSceneGameModeView;->mViewRoot:Landroid/widget/RelativeLayout;

    .line 29
    invoke-virtual {p0}, Lcom/android/server/OemSceneGameModeView;->updateView()V

    .line 30
    return-void
.end method


# virtual methods
.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 34
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 35
    iget-object v0, p0, Lcom/android/server/OemSceneGameModeView;->mPanel:Lcom/android/server/OemSceneGameModePanel;

    invoke-virtual {v0}, Lcom/android/server/OemSceneGameModePanel;->configurationChanged()V

    .line 36
    return-void
.end method

.method public updateView()V
    .locals 0

    .line 38
    return-void
.end method
