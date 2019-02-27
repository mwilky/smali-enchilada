.class Landroid/service/textclassifier/TextClassifierService$1;
.super Landroid/service/textclassifier/ITextClassifierService$Stub;
.source "TextClassifierService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/textclassifier/TextClassifierService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final mCancellationSignal:Landroid/os/CancellationSignal;

.field final synthetic this$0:Landroid/service/textclassifier/TextClassifierService;


# direct methods
.method constructor <init>(Landroid/service/textclassifier/TextClassifierService;)V
    .locals 1

    iput-object p1, p0, Landroid/service/textclassifier/TextClassifierService$1;->this$0:Landroid/service/textclassifier/TextClassifierService;

    invoke-direct {p0}, Landroid/service/textclassifier/ITextClassifierService$Stub;-><init>()V

    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v0, p0, Landroid/service/textclassifier/TextClassifierService$1;->mCancellationSignal:Landroid/os/CancellationSignal;

    return-void
.end method


# virtual methods
.method public onClassifyText(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextClassification$Request;Landroid/service/textclassifier/ITextClassificationCallback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/service/textclassifier/TextClassifierService$1;->this$0:Landroid/service/textclassifier/TextClassifierService;

    invoke-virtual {p2}, Landroid/view/textclassifier/TextClassification$Request;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p2}, Landroid/view/textclassifier/TextClassification$Request;->getStartIndex()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/textclassifier/TextClassification$Request;->getEndIndex()I

    move-result v3

    invoke-static {p1, p2}, Landroid/view/textclassifier/TextClassification$Options;->from(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextClassification$Request;)Landroid/view/textclassifier/TextClassification$Options;

    move-result-object v4

    iget-object v5, p0, Landroid/service/textclassifier/TextClassifierService$1;->mCancellationSignal:Landroid/os/CancellationSignal;

    new-instance v6, Landroid/service/textclassifier/TextClassifierService$1$2;

    invoke-direct {v6, p0, p3}, Landroid/service/textclassifier/TextClassifierService$1$2;-><init>(Landroid/service/textclassifier/TextClassifierService$1;Landroid/service/textclassifier/ITextClassificationCallback;)V

    invoke-virtual/range {v0 .. v6}, Landroid/service/textclassifier/TextClassifierService;->onClassifyText(Ljava/lang/CharSequence;IILandroid/view/textclassifier/TextClassification$Options;Landroid/os/CancellationSignal;Landroid/service/textclassifier/TextClassifierService$Callback;)V

    return-void
.end method

.method public onCreateTextClassificationSession(Landroid/view/textclassifier/TextClassificationContext;Landroid/view/textclassifier/TextClassificationSessionId;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/service/textclassifier/TextClassifierService$1;->this$0:Landroid/service/textclassifier/TextClassifierService;

    invoke-virtual {v0, p1, p2}, Landroid/service/textclassifier/TextClassifierService;->onCreateTextClassificationSession(Landroid/view/textclassifier/TextClassificationContext;Landroid/view/textclassifier/TextClassificationSessionId;)V

    return-void
.end method

.method public onDestroyTextClassificationSession(Landroid/view/textclassifier/TextClassificationSessionId;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/service/textclassifier/TextClassifierService$1;->this$0:Landroid/service/textclassifier/TextClassifierService;

    invoke-virtual {v0, p1}, Landroid/service/textclassifier/TextClassifierService;->onDestroyTextClassificationSession(Landroid/view/textclassifier/TextClassificationSessionId;)V

    return-void
.end method

.method public onGenerateLinks(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextLinks$Request;Landroid/service/textclassifier/ITextLinksCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/service/textclassifier/TextClassifierService$1;->this$0:Landroid/service/textclassifier/TextClassifierService;

    invoke-virtual {p2}, Landroid/view/textclassifier/TextLinks$Request;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {p1, p2}, Landroid/view/textclassifier/TextLinks$Options;->from(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextLinks$Request;)Landroid/view/textclassifier/TextLinks$Options;

    move-result-object v2

    iget-object v3, p0, Landroid/service/textclassifier/TextClassifierService$1;->mCancellationSignal:Landroid/os/CancellationSignal;

    new-instance v4, Landroid/service/textclassifier/TextClassifierService$1$3;

    invoke-direct {v4, p0, p3}, Landroid/service/textclassifier/TextClassifierService$1$3;-><init>(Landroid/service/textclassifier/TextClassifierService$1;Landroid/service/textclassifier/ITextLinksCallback;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/service/textclassifier/TextClassifierService;->onGenerateLinks(Ljava/lang/CharSequence;Landroid/view/textclassifier/TextLinks$Options;Landroid/os/CancellationSignal;Landroid/service/textclassifier/TextClassifierService$Callback;)V

    return-void
.end method

.method public onSelectionEvent(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/SelectionEvent;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/service/textclassifier/TextClassifierService$1;->this$0:Landroid/service/textclassifier/TextClassifierService;

    invoke-virtual {v0, p1, p2}, Landroid/service/textclassifier/TextClassifierService;->onSelectionEvent(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/SelectionEvent;)V

    return-void
.end method

.method public onSuggestSelection(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextSelection$Request;Landroid/service/textclassifier/ITextSelectionCallback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/service/textclassifier/TextClassifierService$1;->this$0:Landroid/service/textclassifier/TextClassifierService;

    invoke-virtual {p2}, Landroid/view/textclassifier/TextSelection$Request;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p2}, Landroid/view/textclassifier/TextSelection$Request;->getStartIndex()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/textclassifier/TextSelection$Request;->getEndIndex()I

    move-result v3

    invoke-static {p1, p2}, Landroid/view/textclassifier/TextSelection$Options;->from(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextSelection$Request;)Landroid/view/textclassifier/TextSelection$Options;

    move-result-object v4

    iget-object v5, p0, Landroid/service/textclassifier/TextClassifierService$1;->mCancellationSignal:Landroid/os/CancellationSignal;

    new-instance v6, Landroid/service/textclassifier/TextClassifierService$1$1;

    invoke-direct {v6, p0, p3}, Landroid/service/textclassifier/TextClassifierService$1$1;-><init>(Landroid/service/textclassifier/TextClassifierService$1;Landroid/service/textclassifier/ITextSelectionCallback;)V

    invoke-virtual/range {v0 .. v6}, Landroid/service/textclassifier/TextClassifierService;->onSuggestSelection(Ljava/lang/CharSequence;IILandroid/view/textclassifier/TextSelection$Options;Landroid/os/CancellationSignal;Landroid/service/textclassifier/TextClassifierService$Callback;)V

    return-void
.end method
