.class Landroid/service/textclassifier/TextClassifierService$1$2;
.super Ljava/lang/Object;
.source "TextClassifierService.java"

# interfaces
.implements Landroid/service/textclassifier/TextClassifierService$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/service/textclassifier/TextClassifierService$1;->onClassifyText(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextClassification$Request;Landroid/service/textclassifier/ITextClassificationCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/service/textclassifier/TextClassifierService$Callback<",
        "Landroid/view/textclassifier/TextClassification;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Landroid/service/textclassifier/TextClassifierService$1;

.field final synthetic val$callback:Landroid/service/textclassifier/ITextClassificationCallback;


# direct methods
.method constructor <init>(Landroid/service/textclassifier/TextClassifierService$1;Landroid/service/textclassifier/ITextClassificationCallback;)V
    .locals 0

    iput-object p1, p0, Landroid/service/textclassifier/TextClassifierService$1$2;->this$1:Landroid/service/textclassifier/TextClassifierService$1;

    iput-object p2, p0, Landroid/service/textclassifier/TextClassifierService$1$2;->val$callback:Landroid/service/textclassifier/ITextClassificationCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/CharSequence;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/service/textclassifier/TextClassifierService$1$2;->val$callback:Landroid/service/textclassifier/ITextClassificationCallback;

    invoke-interface {v0}, Landroid/service/textclassifier/ITextClassificationCallback;->onFailure()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "TextClassifierService"

    const-string v2, "Error calling callback"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onSuccess(Landroid/view/textclassifier/TextClassification;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/service/textclassifier/TextClassifierService$1$2;->val$callback:Landroid/service/textclassifier/ITextClassificationCallback;

    invoke-interface {v0, p1}, Landroid/service/textclassifier/ITextClassificationCallback;->onSuccess(Landroid/view/textclassifier/TextClassification;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "TextClassifierService"

    const-string v2, "Error calling callback"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/view/textclassifier/TextClassification;

    invoke-virtual {p0, p1}, Landroid/service/textclassifier/TextClassifierService$1$2;->onSuccess(Landroid/view/textclassifier/TextClassification;)V

    return-void
.end method
