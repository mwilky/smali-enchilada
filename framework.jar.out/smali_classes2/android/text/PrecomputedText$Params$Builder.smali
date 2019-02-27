.class public Landroid/text/PrecomputedText$Params$Builder;
.super Ljava/lang/Object;
.source "PrecomputedText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/PrecomputedText$Params;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mBreakStrategy:I

.field private mHyphenationFrequency:I

.field private final mPaint:Landroid/text/TextPaint;

.field private mTextDir:Landroid/text/TextDirectionHeuristic;


# direct methods
.method public constructor <init>(Landroid/text/TextPaint;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    iput-object v0, p0, Landroid/text/PrecomputedText$Params$Builder;->mTextDir:Landroid/text/TextDirectionHeuristic;

    const/4 v0, 0x1

    iput v0, p0, Landroid/text/PrecomputedText$Params$Builder;->mBreakStrategy:I

    iput v0, p0, Landroid/text/PrecomputedText$Params$Builder;->mHyphenationFrequency:I

    iput-object p1, p0, Landroid/text/PrecomputedText$Params$Builder;->mPaint:Landroid/text/TextPaint;

    return-void
.end method


# virtual methods
.method public build()Landroid/text/PrecomputedText$Params;
    .locals 5

    new-instance v0, Landroid/text/PrecomputedText$Params;

    iget-object v1, p0, Landroid/text/PrecomputedText$Params$Builder;->mPaint:Landroid/text/TextPaint;

    iget-object v2, p0, Landroid/text/PrecomputedText$Params$Builder;->mTextDir:Landroid/text/TextDirectionHeuristic;

    iget v3, p0, Landroid/text/PrecomputedText$Params$Builder;->mBreakStrategy:I

    iget v4, p0, Landroid/text/PrecomputedText$Params$Builder;->mHyphenationFrequency:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/text/PrecomputedText$Params;-><init>(Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;II)V

    return-object v0
.end method

.method public setBreakStrategy(I)Landroid/text/PrecomputedText$Params$Builder;
    .locals 0

    iput p1, p0, Landroid/text/PrecomputedText$Params$Builder;->mBreakStrategy:I

    return-object p0
.end method

.method public setHyphenationFrequency(I)Landroid/text/PrecomputedText$Params$Builder;
    .locals 0

    iput p1, p0, Landroid/text/PrecomputedText$Params$Builder;->mHyphenationFrequency:I

    return-object p0
.end method

.method public setTextDirection(Landroid/text/TextDirectionHeuristic;)Landroid/text/PrecomputedText$Params$Builder;
    .locals 0

    iput-object p1, p0, Landroid/text/PrecomputedText$Params$Builder;->mTextDir:Landroid/text/TextDirectionHeuristic;

    return-object p0
.end method
