.class final Landroid/view/textclassifier/SystemTextClassifier$TextSelectionCallback;
.super Landroid/service/textclassifier/ITextSelectionCallback$Stub;
.source "SystemTextClassifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/textclassifier/SystemTextClassifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TextSelectionCallback"
.end annotation


# instance fields
.field final mReceiver:Landroid/view/textclassifier/SystemTextClassifier$ResponseReceiver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/view/textclassifier/SystemTextClassifier$ResponseReceiver<",
            "Landroid/view/textclassifier/TextSelection;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/service/textclassifier/ITextSelectionCallback$Stub;-><init>()V

    new-instance v0, Landroid/view/textclassifier/SystemTextClassifier$ResponseReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/textclassifier/SystemTextClassifier$ResponseReceiver;-><init>(Landroid/view/textclassifier/SystemTextClassifier$1;)V

    iput-object v0, p0, Landroid/view/textclassifier/SystemTextClassifier$TextSelectionCallback;->mReceiver:Landroid/view/textclassifier/SystemTextClassifier$ResponseReceiver;

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/textclassifier/SystemTextClassifier$1;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/textclassifier/SystemTextClassifier$TextSelectionCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure()V
    .locals 1

    iget-object v0, p0, Landroid/view/textclassifier/SystemTextClassifier$TextSelectionCallback;->mReceiver:Landroid/view/textclassifier/SystemTextClassifier$ResponseReceiver;

    invoke-virtual {v0}, Landroid/view/textclassifier/SystemTextClassifier$ResponseReceiver;->onFailure()V

    return-void
.end method

.method public onSuccess(Landroid/view/textclassifier/TextSelection;)V
    .locals 1

    iget-object v0, p0, Landroid/view/textclassifier/SystemTextClassifier$TextSelectionCallback;->mReceiver:Landroid/view/textclassifier/SystemTextClassifier$ResponseReceiver;

    invoke-virtual {v0, p1}, Landroid/view/textclassifier/SystemTextClassifier$ResponseReceiver;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method
