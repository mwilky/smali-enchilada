.class public final Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;
.super Ljava/lang/Object;
.source "SmartSelectionEventTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/textclassifier/logging/SmartSelectionEventTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SelectionEvent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent$EventType;,
        Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent$ActionType;
    }
.end annotation


# static fields
.field private static final NO_VERSION_TAG:Ljava/lang/String; = ""

.field public static final OUT_OF_BOUNDS:I = 0x7fffffff

.field public static final OUT_OF_BOUNDS_NEGATIVE:I = -0x80000000


# instance fields
.field private final mEnd:I

.field private final mEntityType:Ljava/lang/String;

.field private mEventType:I

.field private final mStart:I

.field private final mVersionTag:Ljava/lang/String;


# direct methods
.method private constructor <init>(IIILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-lt p2, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "end cannot be less than start"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iput p1, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;->mStart:I

    iput p2, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;->mEnd:I

    iput p3, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;->mEventType:I

    invoke-static {p4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;->mEntityType:Ljava/lang/String;

    invoke-static {p5}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;->mVersionTag:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;)I
    .locals 1

    iget v0, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;->mEventType:I

    return v0
.end method

.method static synthetic access$100(Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;)I
    .locals 1

    iget v0, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;->mEnd:I

    return v0
.end method

.method static synthetic access$200(Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;)I
    .locals 1

    iget v0, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;->mStart:I

    return v0
.end method

.method static synthetic access$300(Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;)Z
    .locals 1

    invoke-direct {p0}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;->isTerminal()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;->mEntityType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;->mVersionTag:Ljava/lang/String;

    return-object v0
.end method

.method private static getSourceClassifier(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "|"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    const-string v1, ""

    return-object v1
.end method

.method private static getVersionInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string/jumbo v0, "|"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const-string/jumbo v1, "|"

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    if-ltz v0, :cond_0

    if-lt v1, v0, :cond_0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_0
    const-string v2, ""

    return-object v2
.end method

.method private isTerminal()Z
    .locals 1

    iget v0, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;->mEventType:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static selectionAction(III)Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;
    .locals 7

    new-instance v6, Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;

    const-string v4, ""

    const-string v5, ""

    move-object v0, v6

    move v1, p0

    move v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;-><init>(IIILjava/lang/String;Ljava/lang/String;)V

    return-object v6
.end method

.method public static selectionAction(IIILandroid/view/textclassifier/TextClassification;)Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;
    .locals 8

    invoke-virtual {p3}, Landroid/view/textclassifier/TextClassification;->getEntityCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/view/textclassifier/TextClassification;->getEntity(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v5, v0

    goto :goto_1

    :cond_0
    const-string v0, ""

    goto :goto_0

    :goto_1
    invoke-virtual {p3}, Landroid/view/textclassifier/TextClassification;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;->getVersionInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v7, Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;

    move-object v1, v7

    move v2, p0

    move v3, p1

    move v4, p2

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;-><init>(IIILjava/lang/String;Ljava/lang/String;)V

    return-object v7
.end method

.method public static selectionModified(II)Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;
    .locals 7

    new-instance v6, Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;

    const-string v4, ""

    const-string v5, ""

    const/4 v3, 0x2

    move-object v0, v6

    move v1, p0

    move v2, p1

    invoke-direct/range {v0 .. v5}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;-><init>(IIILjava/lang/String;Ljava/lang/String;)V

    return-object v6
.end method

.method public static selectionModified(IILandroid/view/textclassifier/TextClassification;)Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;
    .locals 8

    invoke-virtual {p2}, Landroid/view/textclassifier/TextClassification;->getEntityCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/textclassifier/TextClassification;->getEntity(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v5, v0

    goto :goto_1

    :cond_0
    const-string v0, ""

    goto :goto_0

    :goto_1
    invoke-virtual {p2}, Landroid/view/textclassifier/TextClassification;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;->getVersionInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v7, Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;

    const/4 v4, 0x2

    move-object v1, v7

    move v2, p0

    move v3, p1

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;-><init>(IIILjava/lang/String;Ljava/lang/String;)V

    return-object v7
.end method

.method public static selectionModified(IILandroid/view/textclassifier/TextSelection;)Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;
    .locals 9

    invoke-virtual {p2}, Landroid/view/textclassifier/TextSelection;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;->getSourceClassifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "androidtc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sub-int v1, p1, p0

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    :goto_0
    goto :goto_1

    :cond_1
    const/4 v1, 0x5

    :goto_1
    move v5, v1

    invoke-virtual {p2}, Landroid/view/textclassifier/TextSelection;->getEntityCount()I

    move-result v1

    if-lez v1, :cond_2

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/view/textclassifier/TextSelection;->getEntity(I)Ljava/lang/String;

    move-result-object v1

    :goto_2
    move-object v6, v1

    goto :goto_3

    :cond_2
    const-string v1, ""

    goto :goto_2

    :goto_3
    invoke-virtual {p2}, Landroid/view/textclassifier/TextSelection;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;->getVersionInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v8, Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;

    move-object v2, v8

    move v3, p0

    move v4, p1

    move-object v7, v1

    invoke-direct/range {v2 .. v7}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;-><init>(IIILjava/lang/String;Ljava/lang/String;)V

    return-object v8
.end method

.method public static selectionStarted(I)Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;
    .locals 7

    new-instance v6, Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;

    add-int/lit8 v2, p0, 0x1

    const-string v4, ""

    const-string v5, ""

    const/4 v3, 0x1

    move-object v0, v6

    move v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;-><init>(IIILjava/lang/String;Ljava/lang/String;)V

    return-object v6
.end method
