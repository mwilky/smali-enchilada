.class Landroid/service/textclassifier/TextClassifierService$1$3;
.super Ljava/lang/Object;
.source "TextClassifierService.java"

# interfaces
.implements Landroid/service/textclassifier/TextClassifierService$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/service/textclassifier/TextClassifierService$1;->onGenerateLinks(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextLinks$Request;Landroid/service/textclassifier/ITextLinksCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/service/textclassifier/TextClassifierService$Callback<",
        "Landroid/view/textclassifier/TextLinks;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Landroid/service/textclassifier/TextClassifierService$1;

.field final synthetic val$callback:Landroid/service/textclassifier/ITextLinksCallback;


# direct methods
.method constructor <init>(Landroid/service/textclassifier/TextClassifierService$1;Landroid/service/textclassifier/ITextLinksCallback;)V
    .locals 0

    iput-object p1, p0, Landroid/service/textclassifier/TextClassifierService$1$3;->this$1:Landroid/service/textclassifier/TextClassifierService$1;

    iput-object p2, p0, Landroid/service/textclassifier/TextClassifierService$1$3;->val$callback:Landroid/service/textclassifier/ITextLinksCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/CharSequence;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/service/textclassifier/TextClassifierService$1$3;->val$callback:Landroid/service/textclassifier/ITextLinksCallback;

    invoke-interface {v0}, Landroid/service/textclassifier/ITextLinksCallback;->onFailure()V
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

.method public onSuccess(Landroid/view/textclassifier/TextLinks;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/service/textclassifier/TextClassifierService$1$3;->val$callback:Landroid/service/textclassifier/ITextLinksCallback;

    invoke-interface {v0, p1}, Landroid/service/textclassifier/ITextLinksCallback;->onSuccess(Landroid/view/textclassifier/TextLinks;)V
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

    check-cast p1, Landroid/view/textclassifier/TextLinks;

    invoke-virtual {p0, p1}, Landroid/service/textclassifier/TextClassifierService$1$3;->onSuccess(Landroid/view/textclassifier/TextLinks;)V

    return-void
.end method
