.class public Landroid/support/v17/leanback/widget/GuidedAction$Builder;
.super Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;
.source "GuidedAction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/GuidedAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase<",
        "Landroid/support/v17/leanback/widget/GuidedAction$Builder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 568
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;-><init>(Landroid/content/Context;)V

    .line 569
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 576
    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;-><init>(Landroid/content/Context;)V

    .line 577
    return-void
.end method


# virtual methods
.method public build()Landroid/support/v17/leanback/widget/GuidedAction;
    .locals 1

    .line 584
    new-instance v0, Landroid/support/v17/leanback/widget/GuidedAction;

    invoke-direct {v0}, Landroid/support/v17/leanback/widget/GuidedAction;-><init>()V

    .line 585
    .local v0, "action":Landroid/support/v17/leanback/widget/GuidedAction;
    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/GuidedAction$Builder;->applyValues(Landroid/support/v17/leanback/widget/GuidedAction;)V

    .line 586
    return-object v0
.end method
