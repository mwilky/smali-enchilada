.class Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$3;
.super Ljava/lang/Object;
.source "ConfirmLockPattern.java"

# interfaces
.implements Lcom/android/internal/widget/LockPatternView$OnPatternListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$3;->this$0:Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$3;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$3;->isInternalActivity()Z

    move-result v0

    return v0
.end method

.method private isInternalActivity()Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$3;->this$0:Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-virtual {v0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings/password/ConfirmLockPattern$InternalActivity;

    return v0
.end method

.method private startCheckPattern(Ljava/util/List;Landroid/content/Intent;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;",
            "Landroid/content/Intent;",
            ")V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$3;->this$0:Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;

    const/4 v3, 0x0

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$3;->this$0:Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;

    iget v6, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mEffectiveUserId:I

    const/4 v7, 0x0

    move-object v4, p2

    invoke-static/range {v2 .. v7}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->access$500(Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;ZLandroid/content/Intent;IIZ)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$3;->this$0:Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->access$602(Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$3;->this$0:Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;

    iget v0, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mEffectiveUserId:I

    iget-object v1, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$3;->this$0:Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;

    iget-object v2, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$3;->this$0:Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;

    iget-object v2, v2, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    new-instance v3, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$3$2;

    invoke-direct {v3, p0, p2, p1, v0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$3$2;-><init>(Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$3;Landroid/content/Intent;Ljava/util/List;I)V

    invoke-static {v2, p1, v0, v3}, Lcom/android/internal/widget/LockPatternChecker;->checkPattern(Lcom/android/internal/widget/LockPatternUtils;Ljava/util/List;ILcom/android/internal/widget/LockPatternChecker$OnCheckCallback;)Landroid/os/AsyncTask;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->access$202(Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    return-void
.end method

.method private startVerifyPattern(Ljava/util/List;Landroid/content/Intent;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;",
            "Landroid/content/Intent;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$3;->this$0:Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;

    iget v1, v1, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mEffectiveUserId:I

    iget-object v2, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$3;->this$0:Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;

    iget v2, v2, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mUserId:I

    iget-object v3, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$3;->this$0:Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-virtual {v3}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "challenge"

    const-wide/16 v5, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v16

    new-instance v8, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$3$1;

    move-object/from16 v15, p2

    invoke-direct {v8, v0, v15, v1}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$3$1;-><init>(Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$3;Landroid/content/Intent;I)V

    iget-object v14, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$3;->this$0:Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;

    if-ne v1, v2, :cond_0

    iget-object v3, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$3;->this$0:Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;

    iget-object v3, v3, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v4, p1

    move-wide/from16 v5, v16

    move v7, v2

    invoke-static/range {v3 .. v8}, Lcom/android/internal/widget/LockPatternChecker;->verifyPattern(Lcom/android/internal/widget/LockPatternUtils;Ljava/util/List;JILcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;)Landroid/os/AsyncTask;

    move-result-object v3

    move-object v4, v3

    move-object v3, v14

    goto :goto_0

    :cond_0
    iget-object v3, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$3;->this$0:Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;

    iget-object v9, v3, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static/range {p1 .. p1}, Lcom/android/internal/widget/LockPatternUtils;->patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    move-wide/from16 v12, v16

    move-object v3, v14

    move v14, v2

    move-object v15, v8

    invoke-static/range {v9 .. v15}, Lcom/android/internal/widget/LockPatternChecker;->verifyTiedProfileChallenge(Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;ZJILcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;)Landroid/os/AsyncTask;

    move-result-object v4

    :goto_0
    invoke-static {v3, v4}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->access$202(Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    return-void
.end method


# virtual methods
.method public onPatternCellAdded(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onPatternCleared()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$3;->this$0:Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-static {v0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->access$000(Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$3;->this$0:Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-static {v1}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->access$100(Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onPatternDetected(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$3;->this$0:Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-static {v0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->access$200(Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;)Landroid/os/AsyncTask;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$3;->this$0:Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-static {v0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->access$300(Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$3;->this$0:Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-static {v0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->access$000(Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$3;->this$0:Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-virtual {v0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "has_challenge"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$3;->isInternalActivity()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0, p1, v2}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$3;->startVerifyPattern(Ljava/util/List;Landroid/content/Intent;)V

    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$3;->this$0:Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-static {v3}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->access$400(Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;)Lcom/android/settings/password/CredentialCheckResultTracker;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$3;->this$0:Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;

    iget v4, v4, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mEffectiveUserId:I

    invoke-virtual {v3, v1, v2, v1, v4}, Lcom/android/settings/password/CredentialCheckResultTracker;->setResult(ZLandroid/content/Intent;II)V

    return-void

    :cond_2
    invoke-direct {p0, p1, v2}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$3;->startCheckPattern(Ljava/util/List;Landroid/content/Intent;)V

    return-void

    :cond_3
    :goto_0
    return-void
.end method

.method public onPatternStart()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$3;->this$0:Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-static {v0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->access$000(Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$3;->this$0:Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-static {v1}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->access$100(Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method
