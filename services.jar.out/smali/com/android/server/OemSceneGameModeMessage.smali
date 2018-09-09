.class public Lcom/android/server/OemSceneGameModeMessage;
.super Lcom/android/server/OemSceneGameModeView;
.source "OemSceneGameModeMessage.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "OemSceneGameModeMessage"


# instance fields
.field private mBackground:Landroid/view/View;

.field private mMoreSettingsBtn:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/android/server/OemSceneGameModePanel;Z)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layout"    # I
    .param p3, "panel"    # Lcom/android/server/OemSceneGameModePanel;
    .param p4, "animate"    # Z

    .line 32
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/OemSceneGameModeView;-><init>(Landroid/content/Context;ILcom/android/server/OemSceneGameModePanel;Z)V

    .line 33
    return-void
.end method


# virtual methods
.method public updateView()V
    .locals 7

    .line 38
    iget-object v0, p0, Lcom/android/server/OemSceneGameModeMessage;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 39
    .local v0, "resources":Landroid/content/res/Resources;
    const v1, 0x105019d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 41
    .local v1, "status_bar_height":I
    iget-object v2, p0, Lcom/android/server/OemSceneGameModeMessage;->mViewRoot:Landroid/widget/RelativeLayout;

    const v3, 0x5070007

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/OemSceneGameModeMessage;->mBackground:Landroid/view/View;

    .line 42
    iget-object v2, p0, Lcom/android/server/OemSceneGameModeMessage;->mBackground:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 43
    .local v2, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v4, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    add-int/2addr v4, v1

    iget v5, v2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget v6, v2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 44
    iget-object v3, p0, Lcom/android/server/OemSceneGameModeMessage;->mBackground:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 47
    iget-object v3, p0, Lcom/android/server/OemSceneGameModeMessage;->mViewRoot:Landroid/widget/RelativeLayout;

    const v4, 0x5070008

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/server/OemSceneGameModeMessage;->mMoreSettingsBtn:Landroid/widget/TextView;

    .line 48
    iget-object v3, p0, Lcom/android/server/OemSceneGameModeMessage;->mMoreSettingsBtn:Landroid/widget/TextView;

    new-instance v4, Lcom/android/server/OemSceneGameModeMessage$1;

    invoke-direct {v4, p0}, Lcom/android/server/OemSceneGameModeMessage$1;-><init>(Lcom/android/server/OemSceneGameModeMessage;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    iget-object v3, p0, Lcom/android/server/OemSceneGameModeMessage;->mPanel:Lcom/android/server/OemSceneGameModePanel;

    invoke-virtual {v3}, Lcom/android/server/OemSceneGameModePanel;->isDocked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 60
    iget-object v3, p0, Lcom/android/server/OemSceneGameModeMessage;->mMoreSettingsBtn:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 61
    iget-object v3, p0, Lcom/android/server/OemSceneGameModeMessage;->mMoreSettingsBtn:Landroid/widget/TextView;

    const v4, -0x777778

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 63
    :cond_0
    return-void
.end method
