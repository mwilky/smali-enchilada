.class public Lcom/oneplus/settings/ui/OPTimerDialog;
.super Ljava/lang/Object;
.source "OPTimerDialog.java"


# static fields
.field private static final TYPE_NEGATIVE:I = 0x2

.field private static final TYPE_POSITIVE:I = 0x1


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/AlertDialog;

.field private mHandler:Landroid/os/Handler;

.field private mNegativeCount:I

.field private mPositiveCount:I

.field private n:Landroid/widget/Button;

.field private p:Landroid/widget/Button;

.field private status:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPTimerDialog;->p:Landroid/widget/Button;

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPTimerDialog;->n:Landroid/widget/Button;

    const/4 v1, 0x0

    iput v1, p0, Lcom/oneplus/settings/ui/OPTimerDialog;->mPositiveCount:I

    iput v1, p0, Lcom/oneplus/settings/ui/OPTimerDialog;->mNegativeCount:I

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPTimerDialog;->mDialog:Landroid/app/AlertDialog;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/settings/ui/OPTimerDialog;->status:Z

    new-instance v0, Lcom/oneplus/settings/ui/OPTimerDialog$2;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/ui/OPTimerDialog$2;-><init>(Lcom/oneplus/settings/ui/OPTimerDialog;)V

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPTimerDialog;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/oneplus/settings/ui/OPTimerDialog;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/oneplus/settings/ui/OPTimerDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/settings/ui/OPTimerDialog;->mDialog:Landroid/app/AlertDialog;

    iget-object v2, p0, Lcom/oneplus/settings/ui/OPTimerDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d3

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    iget-object v2, p0, Lcom/oneplus/settings/ui/OPTimerDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d9

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    iget-object v2, p0, Lcom/oneplus/settings/ui/OPTimerDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/ui/OPTimerDialog;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPTimerDialog;->mDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oneplus/settings/ui/OPTimerDialog;)I
    .locals 1

    iget v0, p0, Lcom/oneplus/settings/ui/OPTimerDialog;->mNegativeCount:I

    return v0
.end method

.method static synthetic access$110(Lcom/oneplus/settings/ui/OPTimerDialog;)I
    .locals 2

    iget v0, p0, Lcom/oneplus/settings/ui/OPTimerDialog;->mNegativeCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/oneplus/settings/ui/OPTimerDialog;->mNegativeCount:I

    return v0
.end method

.method static synthetic access$200(Lcom/oneplus/settings/ui/OPTimerDialog;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPTimerDialog;->n:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oneplus/settings/ui/OPTimerDialog;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPTimerDialog;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/oneplus/settings/ui/OPTimerDialog;)I
    .locals 1

    iget v0, p0, Lcom/oneplus/settings/ui/OPTimerDialog;->mPositiveCount:I

    return v0
.end method

.method static synthetic access$410(Lcom/oneplus/settings/ui/OPTimerDialog;)I
    .locals 2

    iget v0, p0, Lcom/oneplus/settings/ui/OPTimerDialog;->mPositiveCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/oneplus/settings/ui/OPTimerDialog;->mPositiveCount:I

    return v0
.end method

.method static synthetic access$500(Lcom/oneplus/settings/ui/OPTimerDialog;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPTimerDialog;->p:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$600(Lcom/oneplus/settings/ui/OPTimerDialog;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/settings/ui/OPTimerDialog;->status:Z

    return v0
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ui/OPTimerDialog;->setStatus(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPTimerDialog;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPTimerDialog;->mHandler:Landroid/os/Handler;

    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPTimerDialog;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPTimerDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public getNButton()Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPTimerDialog;->n:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPTimerDialog;->n:Landroid/widget/Button;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPButton()Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPTimerDialog;->p:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPTimerDialog;->p:Landroid/widget/Button;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTimeText(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    if-lez p2, :cond_1

    const-string v0, "("

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "s)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "s)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_1
    return-object p1
.end method

.method public isShowing()Z
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPTimerDialog;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPTimerDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setButtonType(IIZ)V
    .locals 2

    if-gtz p2, :cond_0

    return-void

    :cond_0
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPTimerDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPTimerDialog;->p:Landroid/widget/Button;

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPTimerDialog;->p:Landroid/widget/Button;

    invoke-virtual {v0, p3}, Landroid/widget/Button;->setEnabled(Z)V

    iput p2, p0, Lcom/oneplus/settings/ui/OPTimerDialog;->mPositiveCount:I

    goto :goto_0

    :cond_1
    const/4 v0, -0x2

    if-ne p1, v0, :cond_2

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPTimerDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPTimerDialog;->n:Landroid/widget/Button;

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPTimerDialog;->n:Landroid/widget/Button;

    invoke-virtual {v0, p3}, Landroid/widget/Button;->setEnabled(Z)V

    iput p2, p0, Lcom/oneplus/settings/ui/OPTimerDialog;->mNegativeCount:I

    :cond_2
    :goto_0
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPTimerDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setNegativeButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;I)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPTimerDialog;->mDialog:Landroid/app/AlertDialog;

    const/4 v1, -0x2

    invoke-virtual {v0, v1, p1, p2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPTimerDialog;->mDialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/oneplus/settings/ui/OPTimerDialog$1;

    invoke-direct {v1, p0, p2}, Lcom/oneplus/settings/ui/OPTimerDialog$1;-><init>(Lcom/oneplus/settings/ui/OPTimerDialog;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    return-void
.end method

.method public setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;I)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPTimerDialog;->mDialog:Landroid/app/AlertDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, p1, p2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public setStatus(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/settings/ui/OPTimerDialog;->status:Z

    return-void
.end method

.method public setTitle(I)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPTimerDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->setTitle(I)V

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPTimerDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public show()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPTimerDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
