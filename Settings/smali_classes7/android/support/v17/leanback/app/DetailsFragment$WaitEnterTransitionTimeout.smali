.class Landroid/support/v17/leanback/app/DetailsFragment$WaitEnterTransitionTimeout;
.super Ljava/lang/Object;
.source "DetailsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/app/DetailsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WaitEnterTransitionTimeout"
.end annotation


# static fields
.field static final WAIT_ENTERTRANSITION_START:J = 0xc8L


# instance fields
.field final mRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/support/v17/leanback/app/DetailsFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/app/DetailsFragment;)V
    .locals 3
    .param p1, "f"    # Landroid/support/v17/leanback/app/DetailsFragment;

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment$WaitEnterTransitionTimeout;->mRef:Ljava/lang/ref/WeakReference;

    .line 181
    invoke-virtual {p1}, Landroid/support/v17/leanback/app/DetailsFragment;->getView()Landroid/view/View;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, p0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 182
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 186
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment$WaitEnterTransitionTimeout;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/app/DetailsFragment;

    .line 187
    .local v0, "f":Landroid/support/v17/leanback/app/DetailsFragment;
    if-eqz v0, :cond_0

    .line 188
    iget-object v1, v0, Landroid/support/v17/leanback/app/DetailsFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v2, v0, Landroid/support/v17/leanback/app/DetailsFragment;->EVT_ENTER_TRANSIITON_DONE:Landroid/support/v17/leanback/util/StateMachine$Event;

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/util/StateMachine;->fireEvent(Landroid/support/v17/leanback/util/StateMachine$Event;)V

    .line 190
    :cond_0
    return-void
.end method
