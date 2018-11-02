.class public abstract Lcom/oneplus/lib/widget/ActionProvider;
.super Ljava/lang/Object;
.source "ActionProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/widget/ActionProvider$VisibilityListener;,
        Lcom/oneplus/lib/widget/ActionProvider$SubUiVisibilityListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ActionProvider(support)"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mSubUiVisibilityListener:Lcom/oneplus/lib/widget/ActionProvider$SubUiVisibilityListener;

.field private mVisibilityListener:Lcom/oneplus/lib/widget/ActionProvider$VisibilityListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oneplus/lib/widget/ActionProvider;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/ActionProvider;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public hasSubMenu()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isVisible()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public abstract onCreateActionView()Landroid/view/View;
.end method

.method public onCreateActionView(Landroid/view/MenuItem;)Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/ActionProvider;->onCreateActionView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onPerformDefaultAction()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onPrepareSubMenu(Landroid/view/SubMenu;)V
    .locals 0

    return-void
.end method

.method public overridesItemVisibility()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public refreshVisibility()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/lib/widget/ActionProvider;->mVisibilityListener:Lcom/oneplus/lib/widget/ActionProvider$VisibilityListener;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/ActionProvider;->overridesItemVisibility()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/ActionProvider;->mVisibilityListener:Lcom/oneplus/lib/widget/ActionProvider$VisibilityListener;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/ActionProvider;->isVisible()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/oneplus/lib/widget/ActionProvider$VisibilityListener;->onActionProviderVisibilityChanged(Z)V

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/lib/widget/ActionProvider;->mVisibilityListener:Lcom/oneplus/lib/widget/ActionProvider$VisibilityListener;

    iput-object v0, p0, Lcom/oneplus/lib/widget/ActionProvider;->mSubUiVisibilityListener:Lcom/oneplus/lib/widget/ActionProvider$SubUiVisibilityListener;

    return-void
.end method

.method public setSubUiVisibilityListener(Lcom/oneplus/lib/widget/ActionProvider$SubUiVisibilityListener;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/widget/ActionProvider;->mSubUiVisibilityListener:Lcom/oneplus/lib/widget/ActionProvider$SubUiVisibilityListener;

    return-void
.end method

.method public setVisibilityListener(Lcom/oneplus/lib/widget/ActionProvider$VisibilityListener;)V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/lib/widget/ActionProvider;->mVisibilityListener:Lcom/oneplus/lib/widget/ActionProvider$VisibilityListener;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const-string v0, "ActionProvider(support)"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVisibilityListener: Setting a new ActionProvider.VisibilityListener when one is already set. Are you reusing this "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " instance while it is still in use somewhere else?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object p1, p0, Lcom/oneplus/lib/widget/ActionProvider;->mVisibilityListener:Lcom/oneplus/lib/widget/ActionProvider$VisibilityListener;

    return-void
.end method

.method public subUiVisibilityChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/ActionProvider;->mSubUiVisibilityListener:Lcom/oneplus/lib/widget/ActionProvider$SubUiVisibilityListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/ActionProvider;->mSubUiVisibilityListener:Lcom/oneplus/lib/widget/ActionProvider$SubUiVisibilityListener;

    invoke-interface {v0, p1}, Lcom/oneplus/lib/widget/ActionProvider$SubUiVisibilityListener;->onSubUiVisibilityChanged(Z)V

    :cond_0
    return-void
.end method
