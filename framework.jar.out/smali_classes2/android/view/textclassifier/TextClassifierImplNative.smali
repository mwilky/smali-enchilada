.class final Landroid/view/textclassifier/TextClassifierImplNative;
.super Ljava/lang/Object;
.source "TextClassifierImplNative.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/textclassifier/TextClassifierImplNative$AnnotationOptions;,
        Landroid/view/textclassifier/TextClassifierImplNative$ClassificationOptions;,
        Landroid/view/textclassifier/TextClassifierImplNative$SelectionOptions;,
        Landroid/view/textclassifier/TextClassifierImplNative$AnnotatedSpan;,
        Landroid/view/textclassifier/TextClassifierImplNative$ClassificationResult;,
        Landroid/view/textclassifier/TextClassifierImplNative$DatetimeResult;
    }
.end annotation


# instance fields
.field private final mModelPtr:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "textclassifier"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(I)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/view/textclassifier/TextClassifierImplNative;->nativeNew(I)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/textclassifier/TextClassifierImplNative;->mModelPtr:J

    iget-wide v0, p0, Landroid/view/textclassifier/TextClassifierImplNative;->mModelPtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Couldn\'t initialize TC from file descriptor."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method constructor <init>(Landroid/content/res/AssetFileDescriptor;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v2

    invoke-static {p1, v0, v1, v2, v3}, Landroid/view/textclassifier/TextClassifierImplNative;->nativeNewFromAssetFileDescriptor(Landroid/content/res/AssetFileDescriptor;JJ)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/textclassifier/TextClassifierImplNative;->mModelPtr:J

    iget-wide v0, p0, Landroid/view/textclassifier/TextClassifierImplNative;->mModelPtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Couldn\'t initialize TC from given AssetFileDescriptor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/view/textclassifier/TextClassifierImplNative;->nativeNewFromPath(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/textclassifier/TextClassifierImplNative;->mModelPtr:J

    iget-wide v0, p0, Landroid/view/textclassifier/TextClassifierImplNative;->mModelPtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Couldn\'t initialize TC from given file."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getLocales(I)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Landroid/view/textclassifier/TextClassifierImplNative;->nativeGetLocales(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getVersion(I)I
    .locals 1

    invoke-static {p0}, Landroid/view/textclassifier/TextClassifierImplNative;->nativeGetVersion(I)I

    move-result v0

    return v0
.end method

.method private static native nativeAnnotate(JLjava/lang/String;Landroid/view/textclassifier/TextClassifierImplNative$AnnotationOptions;)[Landroid/view/textclassifier/TextClassifierImplNative$AnnotatedSpan;
.end method

.method private static native nativeClassifyText(JLjava/lang/String;IILandroid/view/textclassifier/TextClassifierImplNative$ClassificationOptions;)[Landroid/view/textclassifier/TextClassifierImplNative$ClassificationResult;
.end method

.method private static native nativeClose(J)V
.end method

.method private static native nativeGetLocales(I)Ljava/lang/String;
.end method

.method private static native nativeGetVersion(I)I
.end method

.method private static native nativeNew(I)J
.end method

.method private static native nativeNewFromAssetFileDescriptor(Landroid/content/res/AssetFileDescriptor;JJ)J
.end method

.method private static native nativeNewFromPath(Ljava/lang/String;)J
.end method

.method private static native nativeSuggestSelection(JLjava/lang/String;IILandroid/view/textclassifier/TextClassifierImplNative$SelectionOptions;)[I
.end method


# virtual methods
.method public annotate(Ljava/lang/String;Landroid/view/textclassifier/TextClassifierImplNative$AnnotationOptions;)[Landroid/view/textclassifier/TextClassifierImplNative$AnnotatedSpan;
    .locals 2

    iget-wide v0, p0, Landroid/view/textclassifier/TextClassifierImplNative;->mModelPtr:J

    invoke-static {v0, v1, p1, p2}, Landroid/view/textclassifier/TextClassifierImplNative;->nativeAnnotate(JLjava/lang/String;Landroid/view/textclassifier/TextClassifierImplNative$AnnotationOptions;)[Landroid/view/textclassifier/TextClassifierImplNative$AnnotatedSpan;

    move-result-object v0

    return-object v0
.end method

.method public classifyText(Ljava/lang/String;IILandroid/view/textclassifier/TextClassifierImplNative$ClassificationOptions;)[Landroid/view/textclassifier/TextClassifierImplNative$ClassificationResult;
    .locals 6

    iget-wide v0, p0, Landroid/view/textclassifier/TextClassifierImplNative;->mModelPtr:J

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Landroid/view/textclassifier/TextClassifierImplNative;->nativeClassifyText(JLjava/lang/String;IILandroid/view/textclassifier/TextClassifierImplNative$ClassificationOptions;)[Landroid/view/textclassifier/TextClassifierImplNative$ClassificationResult;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 2

    iget-wide v0, p0, Landroid/view/textclassifier/TextClassifierImplNative;->mModelPtr:J

    invoke-static {v0, v1}, Landroid/view/textclassifier/TextClassifierImplNative;->nativeClose(J)V

    return-void
.end method

.method public suggestSelection(Ljava/lang/String;IILandroid/view/textclassifier/TextClassifierImplNative$SelectionOptions;)[I
    .locals 6

    iget-wide v0, p0, Landroid/view/textclassifier/TextClassifierImplNative;->mModelPtr:J

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Landroid/view/textclassifier/TextClassifierImplNative;->nativeSuggestSelection(JLjava/lang/String;IILandroid/view/textclassifier/TextClassifierImplNative$SelectionOptions;)[I

    move-result-object v0

    return-object v0
.end method
