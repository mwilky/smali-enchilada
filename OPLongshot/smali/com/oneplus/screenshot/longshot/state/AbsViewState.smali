.class public abstract Lcom/oneplus/screenshot/longshot/state/AbsViewState;
.super Lcom/oneplus/screenshot/longshot/state/BaseState;
.source "AbsViewState.java"

# interfaces
.implements Lcom/oneplus/screenshot/longshot/app/LongshotDialog$OnShowListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "AbsViewState"


# direct methods
.method public constructor <init>(Lcom/oneplus/screenshot/longshot/state/LongshotContext;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/screenshot/longshot/state/BaseState;-><init>(Lcom/oneplus/screenshot/longshot/state/LongshotContext;)V

    return-void
.end method


# virtual methods
.method protected clearContentBackground(Landroid/widget/FrameLayout;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method protected clearDecorForeground(Landroid/widget/FrameLayout;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method protected initContent(Landroid/widget/FrameLayout;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/oneplus/screenshot/longshot/state/AbsViewState;->clearContentBackground(Landroid/widget/FrameLayout;)V

    return-void
.end method

.method protected initDecor(Landroid/widget/FrameLayout;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/oneplus/screenshot/longshot/state/AbsViewState;->clearDecorForeground(Landroid/widget/FrameLayout;)V

    return-void
.end method

.method protected abstract initViews(Landroid/widget/FrameLayout;)V
.end method

.method public onShow(Landroid/app/Dialog;)V
    .locals 2

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lcom/oneplus/screenshot/longshot/state/AbsViewState;->initDecor(Landroid/widget/FrameLayout;)V

    const v1, 0x1020002

    invoke-virtual {p1, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    invoke-virtual {p0, v1}, Lcom/oneplus/screenshot/longshot/state/AbsViewState;->initContent(Landroid/widget/FrameLayout;)V

    invoke-virtual {p0, v1}, Lcom/oneplus/screenshot/longshot/state/AbsViewState;->initViews(Landroid/widget/FrameLayout;)V

    return-void
.end method
