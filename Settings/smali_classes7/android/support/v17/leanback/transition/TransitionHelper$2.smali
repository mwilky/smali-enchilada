.class final Landroid/support/v17/leanback/transition/TransitionHelper$2;
.super Landroid/transition/Transition$EpicenterCallback;
.source "TransitionHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v17/leanback/transition/TransitionHelper;->setEpicenterCallback(Ljava/lang/Object;Landroid/support/v17/leanback/transition/TransitionEpicenterCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Landroid/support/v17/leanback/transition/TransitionEpicenterCallback;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/transition/TransitionEpicenterCallback;)V
    .locals 0

    .line 458
    iput-object p1, p0, Landroid/support/v17/leanback/transition/TransitionHelper$2;->val$callback:Landroid/support/v17/leanback/transition/TransitionEpicenterCallback;

    invoke-direct {p0}, Landroid/transition/Transition$EpicenterCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetEpicenter(Landroid/transition/Transition;)Landroid/graphics/Rect;
    .locals 1
    .param p1, "transition11"    # Landroid/transition/Transition;

    .line 461
    iget-object v0, p0, Landroid/support/v17/leanback/transition/TransitionHelper$2;->val$callback:Landroid/support/v17/leanback/transition/TransitionEpicenterCallback;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/transition/TransitionEpicenterCallback;->onGetEpicenter(Ljava/lang/Object;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method
