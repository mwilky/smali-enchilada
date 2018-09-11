.class Landroid/support/v17/leanback/app/DetailsFragment$1;
.super Landroid/support/v17/leanback/util/StateMachine$State;
.source "DetailsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/app/DetailsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/app/DetailsFragment;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/app/DetailsFragment;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v17/leanback/app/DetailsFragment;
    .param p2, "name"    # Ljava/lang/String;

    .line 102
    iput-object p1, p0, Landroid/support/v17/leanback/app/DetailsFragment$1;->this$0:Landroid/support/v17/leanback/app/DetailsFragment;

    invoke-direct {p0, p2}, Landroid/support/v17/leanback/util/StateMachine$State;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 105
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment$1;->this$0:Landroid/support/v17/leanback/app/DetailsFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/DetailsFragment;->mRowsFragment:Landroid/support/v17/leanback/app/RowsFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/app/RowsFragment;->setEntranceTransitionState(Z)V

    .line 106
    return-void
.end method
