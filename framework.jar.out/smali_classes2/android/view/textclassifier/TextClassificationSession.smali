.class final Landroid/view/textclassifier/TextClassificationSession;
.super Ljava/lang/Object;
.source "TextClassificationSession.java"

# interfaces
.implements Landroid/view/textclassifier/TextClassifier;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/textclassifier/TextClassificationSession$SelectionEventHelper;
    }
.end annotation


# static fields
.field static final DEBUG_LOG_ENABLED:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "TextClassificationSession"


# instance fields
.field private final mClassificationContext:Landroid/view/textclassifier/TextClassificationContext;

.field private final mDelegate:Landroid/view/textclassifier/TextClassifier;

.field private mDestroyed:Z

.field private final mEventHelper:Landroid/view/textclassifier/TextClassificationSession$SelectionEventHelper;

.field private final mSessionId:Landroid/view/textclassifier/TextClassificationSessionId;


# direct methods
.method constructor <init>(Landroid/view/textclassifier/TextClassificationContext;Landroid/view/textclassifier/TextClassifier;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/textclassifier/TextClassificationContext;

    iput-object v0, p0, Landroid/view/textclassifier/TextClassificationSession;->mClassificationContext:Landroid/view/textclassifier/TextClassificationContext;

    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/textclassifier/TextClassifier;

    iput-object v0, p0, Landroid/view/textclassifier/TextClassificationSession;->mDelegate:Landroid/view/textclassifier/TextClassifier;

    new-instance v0, Landroid/view/textclassifier/TextClassificationSessionId;

    invoke-direct {v0}, Landroid/view/textclassifier/TextClassificationSessionId;-><init>()V

    iput-object v0, p0, Landroid/view/textclassifier/TextClassificationSession;->mSessionId:Landroid/view/textclassifier/TextClassificationSessionId;

    new-instance v0, Landroid/view/textclassifier/TextClassificationSession$SelectionEventHelper;

    iget-object v1, p0, Landroid/view/textclassifier/TextClassificationSession;->mSessionId:Landroid/view/textclassifier/TextClassificationSessionId;

    iget-object v2, p0, Landroid/view/textclassifier/TextClassificationSession;->mClassificationContext:Landroid/view/textclassifier/TextClassificationContext;

    invoke-direct {v0, v1, v2}, Landroid/view/textclassifier/TextClassificationSession$SelectionEventHelper;-><init>(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextClassificationContext;)V

    iput-object v0, p0, Landroid/view/textclassifier/TextClassificationSession;->mEventHelper:Landroid/view/textclassifier/TextClassificationSession$SelectionEventHelper;

    invoke-direct {p0}, Landroid/view/textclassifier/TextClassificationSession;->initializeRemoteSession()V

    return-void
.end method

.method private checkDestroyed()V
    .locals 2

    iget-boolean v0, p0, Landroid/view/textclassifier/TextClassificationSession;->mDestroyed:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This TextClassification session has been destroyed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private initializeRemoteSession()V
    .locals 3

    iget-object v0, p0, Landroid/view/textclassifier/TextClassificationSession;->mDelegate:Landroid/view/textclassifier/TextClassifier;

    instance-of v0, v0, Landroid/view/textclassifier/SystemTextClassifier;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/textclassifier/TextClassificationSession;->mDelegate:Landroid/view/textclassifier/TextClassifier;

    check-cast v0, Landroid/view/textclassifier/SystemTextClassifier;

    iget-object v1, p0, Landroid/view/textclassifier/TextClassificationSession;->mClassificationContext:Landroid/view/textclassifier/TextClassificationContext;

    iget-object v2, p0, Landroid/view/textclassifier/TextClassificationSession;->mSessionId:Landroid/view/textclassifier/TextClassificationSessionId;

    invoke-virtual {v0, v1, v2}, Landroid/view/textclassifier/SystemTextClassifier;->initializeRemoteSession(Landroid/view/textclassifier/TextClassificationContext;Landroid/view/textclassifier/TextClassificationSessionId;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public classifyText(Landroid/view/textclassifier/TextClassification$Request;)Landroid/view/textclassifier/TextClassification;
    .locals 1

    invoke-direct {p0}, Landroid/view/textclassifier/TextClassificationSession;->checkDestroyed()V

    iget-object v0, p0, Landroid/view/textclassifier/TextClassificationSession;->mDelegate:Landroid/view/textclassifier/TextClassifier;

    invoke-interface {v0, p1}, Landroid/view/textclassifier/TextClassifier;->classifyText(Landroid/view/textclassifier/TextClassification$Request;)Landroid/view/textclassifier/TextClassification;

    move-result-object v0

    return-object v0
.end method

.method public destroy()V
    .locals 1

    iget-object v0, p0, Landroid/view/textclassifier/TextClassificationSession;->mEventHelper:Landroid/view/textclassifier/TextClassificationSession$SelectionEventHelper;

    invoke-virtual {v0}, Landroid/view/textclassifier/TextClassificationSession$SelectionEventHelper;->endSession()V

    iget-object v0, p0, Landroid/view/textclassifier/TextClassificationSession;->mDelegate:Landroid/view/textclassifier/TextClassifier;

    invoke-interface {v0}, Landroid/view/textclassifier/TextClassifier;->destroy()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/textclassifier/TextClassificationSession;->mDestroyed:Z

    return-void
.end method

.method public generateLinks(Landroid/view/textclassifier/TextLinks$Request;)Landroid/view/textclassifier/TextLinks;
    .locals 1

    invoke-direct {p0}, Landroid/view/textclassifier/TextClassificationSession;->checkDestroyed()V

    iget-object v0, p0, Landroid/view/textclassifier/TextClassificationSession;->mDelegate:Landroid/view/textclassifier/TextClassifier;

    invoke-interface {v0, p1}, Landroid/view/textclassifier/TextClassifier;->generateLinks(Landroid/view/textclassifier/TextLinks$Request;)Landroid/view/textclassifier/TextLinks;

    move-result-object v0

    return-object v0
.end method

.method public isDestroyed()Z
    .locals 1

    iget-boolean v0, p0, Landroid/view/textclassifier/TextClassificationSession;->mDestroyed:Z

    return v0
.end method

.method public onSelectionEvent(Landroid/view/textclassifier/SelectionEvent;)V
    .locals 1

    invoke-direct {p0}, Landroid/view/textclassifier/TextClassificationSession;->checkDestroyed()V

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/view/textclassifier/TextClassificationSession;->mEventHelper:Landroid/view/textclassifier/TextClassificationSession$SelectionEventHelper;

    invoke-virtual {v0, p1}, Landroid/view/textclassifier/TextClassificationSession$SelectionEventHelper;->sanitizeEvent(Landroid/view/textclassifier/SelectionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/textclassifier/TextClassificationSession;->mDelegate:Landroid/view/textclassifier/TextClassifier;

    invoke-interface {v0, p1}, Landroid/view/textclassifier/TextClassifier;->onSelectionEvent(Landroid/view/textclassifier/SelectionEvent;)V

    :cond_0
    return-void
.end method

.method public suggestSelection(Landroid/view/textclassifier/TextSelection$Request;)Landroid/view/textclassifier/TextSelection;
    .locals 1

    invoke-direct {p0}, Landroid/view/textclassifier/TextClassificationSession;->checkDestroyed()V

    iget-object v0, p0, Landroid/view/textclassifier/TextClassificationSession;->mDelegate:Landroid/view/textclassifier/TextClassifier;

    invoke-interface {v0, p1}, Landroid/view/textclassifier/TextClassifier;->suggestSelection(Landroid/view/textclassifier/TextSelection$Request;)Landroid/view/textclassifier/TextSelection;

    move-result-object v0

    return-object v0
.end method
