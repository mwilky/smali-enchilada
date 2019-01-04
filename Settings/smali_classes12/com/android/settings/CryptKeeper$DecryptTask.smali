.class Lcom/android/settings/CryptKeeper$DecryptTask;
.super Landroid/os/AsyncTask;
.source "CryptKeeper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/CryptKeeper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DecryptTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/CryptKeeper;


# direct methods
.method private constructor <init>(Lcom/android/settings/CryptKeeper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/CryptKeeper$DecryptTask;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/CryptKeeper;Lcom/android/settings/CryptKeeper$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/CryptKeeper$DecryptTask;-><init>(Lcom/android/settings/CryptKeeper;)V

    return-void
.end method

.method private hide(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/CryptKeeper$DecryptTask;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-virtual {v0, p1}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Integer;
    .locals 4

    iget-object v0, p0, Lcom/android/settings/CryptKeeper$DecryptTask;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-static {v0}, Lcom/android/settings/CryptKeeper;->access$300(Lcom/android/settings/CryptKeeper;)Landroid/os/storage/IStorageManager;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    aget-object v1, p1, v1

    invoke-interface {v0, v1}, Landroid/os/storage/IStorageManager;->decryptStorage(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    const-string v2, "CryptKeeper"

    const-string v3, "Error while decrypting..."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    return-object v2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/settings/CryptKeeper$DecryptTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/CryptKeeper$DecryptTask;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-static {v0}, Lcom/android/settings/CryptKeeper;->access$100(Lcom/android/settings/CryptKeeper;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/CryptKeeper$DecryptTask;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-static {v0}, Lcom/android/settings/CryptKeeper;->access$100(Lcom/android/settings/CryptKeeper;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/CryptKeeper$DecryptTask;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-static {v1}, Lcom/android/settings/CryptKeeper;->access$400(Lcom/android/settings/CryptKeeper;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/android/settings/CryptKeeper$DecryptTask;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-static {v0}, Lcom/android/settings/CryptKeeper;->access$100(Lcom/android/settings/CryptKeeper;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/CryptKeeper$DecryptTask;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-static {v1}, Lcom/android/settings/CryptKeeper;->access$400(Lcom/android/settings/CryptKeeper;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/LockPatternView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    iget-object v0, p0, Lcom/android/settings/CryptKeeper$DecryptTask;->this$0:Lcom/android/settings/CryptKeeper;

    const v1, 0x7f0a0516

    invoke-virtual {v0, v1}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f1210c4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v1, 0x7f0a0401

    invoke-direct {p0, v1}, Lcom/android/settings/CryptKeeper$DecryptTask;->hide(I)V

    const v1, 0x7f0a055c

    invoke-direct {p0, v1}, Lcom/android/settings/CryptKeeper$DecryptTask;->hide(I)V

    const v1, 0x7f0a0313

    invoke-direct {p0, v1}, Lcom/android/settings/CryptKeeper$DecryptTask;->hide(I)V

    const v1, 0x7f0a03f0

    invoke-direct {p0, v1}, Lcom/android/settings/CryptKeeper$DecryptTask;->hide(I)V

    const v1, 0x7f0a01bb

    invoke-direct {p0, v1}, Lcom/android/settings/CryptKeeper$DecryptTask;->hide(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x1e

    if-ne v0, v1, :cond_2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.FACTORY_RESET"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "android.intent.extra.REASON"

    const-string v2, "CryptKeeper.MAX_FAILED_ATTEMPTS"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/CryptKeeper$DecryptTask;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-virtual {v1, v0}, Lcom/android/settings/CryptKeeper;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/settings/CryptKeeper$DecryptTask;->this$0:Lcom/android/settings/CryptKeeper;

    const v1, 0x7f0d006b

    invoke-virtual {v0, v1}, Lcom/android/settings/CryptKeeper;->setContentView(I)V

    iget-object v0, p0, Lcom/android/settings/CryptKeeper$DecryptTask;->this$0:Lcom/android/settings/CryptKeeper;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settings/CryptKeeper;->access$500(Lcom/android/settings/CryptKeeper;Z)V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/settings/CryptKeeper$DecryptTask;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-static {v0, p1}, Lcom/android/settings/CryptKeeper;->access$000(Lcom/android/settings/CryptKeeper;Ljava/lang/Integer;)V

    :goto_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/settings/CryptKeeper$DecryptTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    iget-object v0, p0, Lcom/android/settings/CryptKeeper$DecryptTask;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-static {v0}, Lcom/android/settings/CryptKeeper;->access$200(Lcom/android/settings/CryptKeeper;)V

    return-void
.end method
