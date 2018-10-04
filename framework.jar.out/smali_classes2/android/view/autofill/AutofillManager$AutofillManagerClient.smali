.class final Landroid/view/autofill/AutofillManager$AutofillManagerClient;
.super Landroid/view/autofill/IAutoFillManagerClient$Stub;
.source "AutofillManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/autofill/AutofillManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AutofillManagerClient"
.end annotation


# instance fields
.field private final mAfm:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/autofill/AutofillManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/view/autofill/AutofillManager;)V
    .locals 1

    invoke-direct {p0}, Landroid/view/autofill/IAutoFillManagerClient$Stub;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/view/autofill/AutofillManager$AutofillManagerClient;->mAfm:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static synthetic lambda$authenticate$2(Landroid/view/autofill/AutofillManager;IILandroid/content/IntentSender;Landroid/content/Intent;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/autofill/AutofillManager;->access$1600(Landroid/view/autofill/AutofillManager;IILandroid/content/IntentSender;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic lambda$autofill$1(Landroid/view/autofill/AutofillManager;ILjava/util/List;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroid/view/autofill/AutofillManager;->access$1700(Landroid/view/autofill/AutofillManager;ILjava/util/List;Ljava/util/List;)V

    return-void
.end method

.method static synthetic lambda$dispatchUnhandledKey$6(Landroid/view/autofill/AutofillManager;ILandroid/view/autofill/AutofillId;Landroid/view/KeyEvent;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroid/view/autofill/AutofillManager;->access$1200(Landroid/view/autofill/AutofillManager;ILandroid/view/autofill/AutofillId;Landroid/view/KeyEvent;)V

    return-void
.end method

.method static synthetic lambda$notifyNoFillUi$5(Landroid/view/autofill/AutofillManager;ILandroid/view/autofill/AutofillId;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroid/view/autofill/AutofillManager;->access$1300(Landroid/view/autofill/AutofillManager;ILandroid/view/autofill/AutofillId;I)V

    return-void
.end method

.method static synthetic lambda$requestHideFillUi$4(Landroid/view/autofill/AutofillManager;Landroid/view/autofill/AutofillId;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/view/autofill/AutofillManager;->access$1400(Landroid/view/autofill/AutofillManager;Landroid/view/autofill/AutofillId;Z)V

    return-void
.end method

.method static synthetic lambda$requestShowFillUi$3(Landroid/view/autofill/AutofillManager;ILandroid/view/autofill/AutofillId;IILandroid/graphics/Rect;Landroid/view/autofill/IAutofillWindowPresenter;)V
    .locals 0

    invoke-static/range {p0 .. p6}, Landroid/view/autofill/AutofillManager;->access$1500(Landroid/view/autofill/AutofillManager;ILandroid/view/autofill/AutofillId;IILandroid/graphics/Rect;Landroid/view/autofill/IAutofillWindowPresenter;)V

    return-void
.end method

.method static synthetic lambda$setSaveUiState$9(Landroid/view/autofill/AutofillManager;IZ)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/view/autofill/AutofillManager;->access$1000(Landroid/view/autofill/AutofillManager;IZ)V

    return-void
.end method

.method static synthetic lambda$setSessionFinished$10(Landroid/view/autofill/AutofillManager;I)V
    .locals 0

    invoke-static {p0, p1}, Landroid/view/autofill/AutofillManager;->access$900(Landroid/view/autofill/AutofillManager;I)V

    return-void
.end method

.method static synthetic lambda$setState$0(Landroid/view/autofill/AutofillManager;I)V
    .locals 0

    invoke-static {p0, p1}, Landroid/view/autofill/AutofillManager;->access$1800(Landroid/view/autofill/AutofillManager;I)V

    return-void
.end method

.method static synthetic lambda$setTrackedViews$8(Landroid/view/autofill/AutofillManager;I[Landroid/view/autofill/AutofillId;ZZ[Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillId;)V
    .locals 0

    invoke-static/range {p0 .. p6}, Landroid/view/autofill/AutofillManager;->access$1100(Landroid/view/autofill/AutofillManager;I[Landroid/view/autofill/AutofillId;ZZ[Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillId;)V

    return-void
.end method

.method static synthetic lambda$startIntentSender$7(Landroid/view/autofill/AutofillManager;Landroid/content/IntentSender;Landroid/content/Intent;)V
    .locals 6

    :try_start_0
    invoke-static {p0}, Landroid/view/autofill/AutofillManager;->access$200(Landroid/view/autofill/AutofillManager;)Landroid/content/Context;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;III)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AutofillManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startIntentSender() failed for intent:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public authenticate(IILandroid/content/IntentSender;Landroid/content/Intent;)V
    .locals 8

    iget-object v0, p0, Landroid/view/autofill/AutofillManager$AutofillManagerClient;->mAfm:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillManager;

    if-eqz v0, :cond_0

    new-instance v7, Landroid/view/autofill/-$$Lambda$AutofillManager$AutofillManagerClient$qyxZ4PACUgHFGSvMBHzgwjJ3yns;

    move-object v1, v7

    move-object v2, v0

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Landroid/view/autofill/-$$Lambda$AutofillManager$AutofillManagerClient$qyxZ4PACUgHFGSvMBHzgwjJ3yns;-><init>(Landroid/view/autofill/AutofillManager;IILandroid/content/IntentSender;Landroid/content/Intent;)V

    invoke-static {v0, v7}, Landroid/view/autofill/AutofillManager;->access$800(Landroid/view/autofill/AutofillManager;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public autofill(ILjava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/view/autofill/AutofillId;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/autofill/AutofillValue;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/view/autofill/AutofillManager$AutofillManagerClient;->mAfm:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillManager;

    if-eqz v0, :cond_0

    new-instance v1, Landroid/view/autofill/-$$Lambda$AutofillManager$AutofillManagerClient$1jAzMluMSJksx55SMUQn4BKB2Ng;

    invoke-direct {v1, v0, p1, p2, p3}, Landroid/view/autofill/-$$Lambda$AutofillManager$AutofillManagerClient$1jAzMluMSJksx55SMUQn4BKB2Ng;-><init>(Landroid/view/autofill/AutofillManager;ILjava/util/List;Ljava/util/List;)V

    invoke-static {v0, v1}, Landroid/view/autofill/AutofillManager;->access$800(Landroid/view/autofill/AutofillManager;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public dispatchUnhandledKey(ILandroid/view/autofill/AutofillId;Landroid/view/KeyEvent;)V
    .locals 2

    iget-object v0, p0, Landroid/view/autofill/AutofillManager$AutofillManagerClient;->mAfm:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillManager;

    if-eqz v0, :cond_0

    new-instance v1, Landroid/view/autofill/-$$Lambda$AutofillManager$AutofillManagerClient$xqXjXW0fvc8JdYR5fgGKw9lJc3I;

    invoke-direct {v1, v0, p1, p2, p3}, Landroid/view/autofill/-$$Lambda$AutofillManager$AutofillManagerClient$xqXjXW0fvc8JdYR5fgGKw9lJc3I;-><init>(Landroid/view/autofill/AutofillManager;ILandroid/view/autofill/AutofillId;Landroid/view/KeyEvent;)V

    invoke-static {v0, v1}, Landroid/view/autofill/AutofillManager;->access$800(Landroid/view/autofill/AutofillManager;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public notifyNoFillUi(ILandroid/view/autofill/AutofillId;I)V
    .locals 2

    iget-object v0, p0, Landroid/view/autofill/AutofillManager$AutofillManagerClient;->mAfm:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillManager;

    if-eqz v0, :cond_0

    new-instance v1, Landroid/view/autofill/-$$Lambda$AutofillManager$AutofillManagerClient$K79QnIPRaZuikYDQdsLcIUBhqiI;

    invoke-direct {v1, v0, p1, p2, p3}, Landroid/view/autofill/-$$Lambda$AutofillManager$AutofillManagerClient$K79QnIPRaZuikYDQdsLcIUBhqiI;-><init>(Landroid/view/autofill/AutofillManager;ILandroid/view/autofill/AutofillId;I)V

    invoke-static {v0, v1}, Landroid/view/autofill/AutofillManager;->access$800(Landroid/view/autofill/AutofillManager;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public requestHideFillUi(ILandroid/view/autofill/AutofillId;)V
    .locals 2

    iget-object v0, p0, Landroid/view/autofill/AutofillManager$AutofillManagerClient;->mAfm:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillManager;

    if-eqz v0, :cond_0

    new-instance v1, Landroid/view/autofill/-$$Lambda$AutofillManager$AutofillManagerClient$dCTetwfU0gT1ZrSzZGZiGStXlOY;

    invoke-direct {v1, v0, p2}, Landroid/view/autofill/-$$Lambda$AutofillManager$AutofillManagerClient$dCTetwfU0gT1ZrSzZGZiGStXlOY;-><init>(Landroid/view/autofill/AutofillManager;Landroid/view/autofill/AutofillId;)V

    invoke-static {v0, v1}, Landroid/view/autofill/AutofillManager;->access$800(Landroid/view/autofill/AutofillManager;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public requestShowFillUi(ILandroid/view/autofill/AutofillId;IILandroid/graphics/Rect;Landroid/view/autofill/IAutofillWindowPresenter;)V
    .locals 11

    move-object v0, p0

    iget-object v1, v0, Landroid/view/autofill/AutofillManager$AutofillManagerClient;->mAfm:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/autofill/AutofillManager;

    if-eqz v1, :cond_0

    new-instance v10, Landroid/view/autofill/-$$Lambda$AutofillManager$AutofillManagerClient$kRL9XILLc2XNr90gxVDACLzcyqc;

    move-object v2, v10

    move-object v3, v1

    move v4, p1

    move-object v5, p2

    move v6, p3

    move v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v2 .. v9}, Landroid/view/autofill/-$$Lambda$AutofillManager$AutofillManagerClient$kRL9XILLc2XNr90gxVDACLzcyqc;-><init>(Landroid/view/autofill/AutofillManager;ILandroid/view/autofill/AutofillId;IILandroid/graphics/Rect;Landroid/view/autofill/IAutofillWindowPresenter;)V

    invoke-static {v1, v10}, Landroid/view/autofill/AutofillManager;->access$800(Landroid/view/autofill/AutofillManager;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public setSaveUiState(IZ)V
    .locals 2

    iget-object v0, p0, Landroid/view/autofill/AutofillManager$AutofillManagerClient;->mAfm:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillManager;

    if-eqz v0, :cond_0

    new-instance v1, Landroid/view/autofill/-$$Lambda$AutofillManager$AutofillManagerClient$QIW-100CKwHzdHffwaus9KOEHCA;

    invoke-direct {v1, v0, p1, p2}, Landroid/view/autofill/-$$Lambda$AutofillManager$AutofillManagerClient$QIW-100CKwHzdHffwaus9KOEHCA;-><init>(Landroid/view/autofill/AutofillManager;IZ)V

    invoke-static {v0, v1}, Landroid/view/autofill/AutofillManager;->access$800(Landroid/view/autofill/AutofillManager;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public setSessionFinished(I)V
    .locals 2

    iget-object v0, p0, Landroid/view/autofill/AutofillManager$AutofillManagerClient;->mAfm:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillManager;

    if-eqz v0, :cond_0

    new-instance v1, Landroid/view/autofill/-$$Lambda$AutofillManager$AutofillManagerClient$V-s28jF4_S72cRk4llkGpwbJnmk;

    invoke-direct {v1, v0, p1}, Landroid/view/autofill/-$$Lambda$AutofillManager$AutofillManagerClient$V-s28jF4_S72cRk4llkGpwbJnmk;-><init>(Landroid/view/autofill/AutofillManager;I)V

    invoke-static {v0, v1}, Landroid/view/autofill/AutofillManager;->access$800(Landroid/view/autofill/AutofillManager;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public setState(I)V
    .locals 2

    iget-object v0, p0, Landroid/view/autofill/AutofillManager$AutofillManagerClient;->mAfm:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillManager;

    if-eqz v0, :cond_0

    new-instance v1, Landroid/view/autofill/-$$Lambda$AutofillManager$AutofillManagerClient$qH36EJk2Hkdja9ZZmTxqYPyr0YA;

    invoke-direct {v1, v0, p1}, Landroid/view/autofill/-$$Lambda$AutofillManager$AutofillManagerClient$qH36EJk2Hkdja9ZZmTxqYPyr0YA;-><init>(Landroid/view/autofill/AutofillManager;I)V

    invoke-static {v0, v1}, Landroid/view/autofill/AutofillManager;->access$800(Landroid/view/autofill/AutofillManager;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public setTrackedViews(I[Landroid/view/autofill/AutofillId;ZZ[Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillId;)V
    .locals 11

    move-object v0, p0

    iget-object v1, v0, Landroid/view/autofill/AutofillManager$AutofillManagerClient;->mAfm:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/autofill/AutofillManager;

    if-eqz v1, :cond_0

    new-instance v10, Landroid/view/autofill/-$$Lambda$AutofillManager$AutofillManagerClient$BPlC2x7GLNHFS92rPUSzbcpFhUc;

    move-object v2, v10

    move-object v3, v1

    move v4, p1

    move-object v5, p2

    move v6, p3

    move v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v2 .. v9}, Landroid/view/autofill/-$$Lambda$AutofillManager$AutofillManagerClient$BPlC2x7GLNHFS92rPUSzbcpFhUc;-><init>(Landroid/view/autofill/AutofillManager;I[Landroid/view/autofill/AutofillId;ZZ[Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillId;)V

    invoke-static {v1, v10}, Landroid/view/autofill/AutofillManager;->access$800(Landroid/view/autofill/AutofillManager;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Landroid/view/autofill/AutofillManager$AutofillManagerClient;->mAfm:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillManager;

    if-eqz v0, :cond_0

    new-instance v1, Landroid/view/autofill/-$$Lambda$AutofillManager$AutofillManagerClient$pM5e3ez5KTBdZt4d8qLEERBUSiU;

    invoke-direct {v1, v0, p1, p2}, Landroid/view/autofill/-$$Lambda$AutofillManager$AutofillManagerClient$pM5e3ez5KTBdZt4d8qLEERBUSiU;-><init>(Landroid/view/autofill/AutofillManager;Landroid/content/IntentSender;Landroid/content/Intent;)V

    invoke-static {v0, v1}, Landroid/view/autofill/AutofillManager;->access$800(Landroid/view/autofill/AutofillManager;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
