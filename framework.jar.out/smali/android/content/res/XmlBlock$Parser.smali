.class final Landroid/content/res/XmlBlock$Parser;
.super Ljava/lang/Object;
.source "XmlBlock.java"

# interfaces
.implements Landroid/content/res/XmlResourceParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/XmlBlock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "Parser"
.end annotation


# instance fields
.field private final mBlock:Landroid/content/res/XmlBlock;

.field private mDecNextDepth:Z

.field private mDepth:I

.field private mEventType:I

.field mParseState:J

.field private mStarted:Z

.field final synthetic this$0:Landroid/content/res/XmlBlock;


# direct methods
.method constructor <init>(Landroid/content/res/XmlBlock;JLandroid/content/res/XmlBlock;)V
    .locals 1

    iput-object p1, p0, Landroid/content/res/XmlBlock$Parser;->this$0:Landroid/content/res/XmlBlock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/content/res/XmlBlock$Parser;->mStarted:Z

    iput-boolean v0, p0, Landroid/content/res/XmlBlock$Parser;->mDecNextDepth:Z

    iput v0, p0, Landroid/content/res/XmlBlock$Parser;->mDepth:I

    iput v0, p0, Landroid/content/res/XmlBlock$Parser;->mEventType:I

    iput-wide p2, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    iput-object p4, p0, Landroid/content/res/XmlBlock$Parser;->mBlock:Landroid/content/res/XmlBlock;

    invoke-static {p4}, Landroid/content/res/XmlBlock;->access$008(Landroid/content/res/XmlBlock;)I

    return-void
.end method


# virtual methods
.method public close()V
    .locals 5

    iget-object v0, p0, Landroid/content/res/XmlBlock$Parser;->mBlock:Landroid/content/res/XmlBlock;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    iget-wide v1, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    invoke-static {v1, v2}, Landroid/content/res/XmlBlock;->access$1500(J)V

    iput-wide v3, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    iget-object v1, p0, Landroid/content/res/XmlBlock$Parser;->mBlock:Landroid/content/res/XmlBlock;

    invoke-static {v1}, Landroid/content/res/XmlBlock;->access$1600(Landroid/content/res/XmlBlock;)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public defineEntityReplacementText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "defineEntityReplacementText() not supported"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->close()V

    return-void
.end method

.method public getAttributeBooleanValue(IZ)Z
    .locals 3

    iget-wide v0, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    invoke-static {v0, v1, p1}, Landroid/content/res/XmlBlock;->access$800(JI)I

    move-result v0

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    const/16 v1, 0x1f

    if-gt v0, v1, :cond_1

    iget-wide v1, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    invoke-static {v1, v2, p1}, Landroid/content/res/XmlBlock;->access$900(JI)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    return p2
.end method

.method public getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 2

    iget-wide v0, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    invoke-static {v0, v1, p1, p2}, Landroid/content/res/XmlBlock;->access$1000(JLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p0, v0, p3}, Landroid/content/res/XmlBlock$Parser;->getAttributeBooleanValue(IZ)Z

    move-result v1

    return v1

    :cond_0
    return p3
.end method

.method public getAttributeCount()I
    .locals 2

    iget v0, p0, Landroid/content/res/XmlBlock$Parser;->mEventType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    invoke-static {v0, v1}, Landroid/content/res/XmlBlock;->access$600(J)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public getAttributeFloatValue(IF)F
    .locals 3

    iget-wide v0, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    invoke-static {v0, v1, p1}, Landroid/content/res/XmlBlock;->access$800(JI)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-wide v1, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    invoke-static {v1, v2, p1}, Landroid/content/res/XmlBlock;->access$900(JI)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    return v1

    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "not a float!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getAttributeFloatValue(Ljava/lang/String;Ljava/lang/String;F)F
    .locals 2

    iget-wide v0, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    invoke-static {v0, v1, p1, p2}, Landroid/content/res/XmlBlock;->access$1000(JLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p0, v0, p3}, Landroid/content/res/XmlBlock$Parser;->getAttributeFloatValue(IF)F

    move-result v1

    return v1

    :cond_0
    return p3
.end method

.method public getAttributeIntValue(II)I
    .locals 3

    iget-wide v0, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    invoke-static {v0, v1, p1}, Landroid/content/res/XmlBlock;->access$800(JI)I

    move-result v0

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    const/16 v1, 0x1f

    if-gt v0, v1, :cond_0

    iget-wide v1, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    invoke-static {v1, v2, p1}, Landroid/content/res/XmlBlock;->access$900(JI)I

    move-result v1

    return v1

    :cond_0
    return p2
.end method

.method public getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 2

    iget-wide v0, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    invoke-static {v0, v1, p1, p2}, Landroid/content/res/XmlBlock;->access$1000(JLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p0, v0, p3}, Landroid/content/res/XmlBlock$Parser;->getAttributeIntValue(II)I

    move-result v1

    return v1

    :cond_0
    return p3
.end method

.method public getAttributeListValue(I[Ljava/lang/String;I)I
    .locals 3

    iget-wide v0, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    invoke-static {v0, v1, p1}, Landroid/content/res/XmlBlock;->access$800(JI)I

    move-result v0

    iget-wide v1, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    invoke-static {v1, v2, p1}, Landroid/content/res/XmlBlock;->access$900(JI)I

    move-result v1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    iget-object v2, p0, Landroid/content/res/XmlBlock$Parser;->this$0:Landroid/content/res/XmlBlock;

    iget-object v2, v2, Landroid/content/res/XmlBlock;->mStrings:Landroid/content/res/StringBlock;

    invoke-virtual {v2, v1}, Landroid/content/res/StringBlock;->get(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2, p2, p3}, Lcom/android/internal/util/XmlUtils;->convertValueToList(Ljava/lang/CharSequence;[Ljava/lang/String;I)I

    move-result v2

    return v2

    :cond_0
    return v1
.end method

.method public getAttributeListValue(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)I
    .locals 2

    iget-wide v0, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    invoke-static {v0, v1, p1, p2}, Landroid/content/res/XmlBlock;->access$1000(JLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p0, v0, p3, p4}, Landroid/content/res/XmlBlock$Parser;->getAttributeListValue(I[Ljava/lang/String;I)I

    move-result v1

    return v1

    :cond_0
    return p4
.end method

.method public getAttributeName(I)Ljava/lang/String;
    .locals 3

    iget-wide v0, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    invoke-static {v0, v1, p1}, Landroid/content/res/XmlBlock;->access$500(JI)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Landroid/content/res/XmlBlock$Parser;->this$0:Landroid/content/res/XmlBlock;

    iget-object v1, v1, Landroid/content/res/XmlBlock;->mStrings:Landroid/content/res/StringBlock;

    invoke-virtual {v1, v0}, Landroid/content/res/StringBlock;->get(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getAttributeNameResource(I)I
    .locals 2

    iget-wide v0, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    invoke-static {v0, v1, p1}, Landroid/content/res/XmlBlock;->access$1100(JI)I

    move-result v0

    return v0
.end method

.method public getAttributeNamespace(I)Ljava/lang/String;
    .locals 3

    iget-wide v0, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    invoke-static {v0, v1, p1}, Landroid/content/res/XmlBlock;->access$400(JI)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Landroid/content/res/XmlBlock$Parser;->this$0:Landroid/content/res/XmlBlock;

    iget-object v1, v1, Landroid/content/res/XmlBlock;->mStrings:Landroid/content/res/StringBlock;

    invoke-virtual {v1, v0}, Landroid/content/res/StringBlock;->get(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const-string v1, ""

    return-object v1

    :cond_1
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getAttributePrefix(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "getAttributePrefix not supported"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAttributeResourceValue(II)I
    .locals 3

    iget-wide v0, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    invoke-static {v0, v1, p1}, Landroid/content/res/XmlBlock;->access$800(JI)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-wide v1, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    invoke-static {v1, v2, p1}, Landroid/content/res/XmlBlock;->access$900(JI)I

    move-result v1

    return v1

    :cond_0
    return p2
.end method

.method public getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 2

    iget-wide v0, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    invoke-static {v0, v1, p1, p2}, Landroid/content/res/XmlBlock;->access$1000(JLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p0, v0, p3}, Landroid/content/res/XmlBlock$Parser;->getAttributeResourceValue(II)I

    move-result v1

    return v1

    :cond_0
    return p3
.end method

.method public getAttributeType(I)Ljava/lang/String;
    .locals 1

    const-string v0, "CDATA"

    return-object v0
.end method

.method public getAttributeUnsignedIntValue(II)I
    .locals 3

    iget-wide v0, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    invoke-static {v0, v1, p1}, Landroid/content/res/XmlBlock;->access$800(JI)I

    move-result v0

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    const/16 v1, 0x1f

    if-gt v0, v1, :cond_0

    iget-wide v1, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    invoke-static {v1, v2, p1}, Landroid/content/res/XmlBlock;->access$900(JI)I

    move-result v1

    return v1

    :cond_0
    return p2
.end method

.method public getAttributeUnsignedIntValue(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 2

    iget-wide v0, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    invoke-static {v0, v1, p1, p2}, Landroid/content/res/XmlBlock;->access$1000(JLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p0, v0, p3}, Landroid/content/res/XmlBlock$Parser;->getAttributeUnsignedIntValue(II)I

    move-result v1

    return v1

    :cond_0
    return p3
.end method

.method public getAttributeValue(I)Ljava/lang/String;
    .locals 4

    iget-wide v0, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    invoke-static {v0, v1, p1}, Landroid/content/res/XmlBlock;->access$700(JI)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Landroid/content/res/XmlBlock$Parser;->this$0:Landroid/content/res/XmlBlock;

    iget-object v1, v1, Landroid/content/res/XmlBlock;->mStrings:Landroid/content/res/StringBlock;

    invoke-virtual {v1, v0}, Landroid/content/res/StringBlock;->get(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    iget-wide v1, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    invoke-static {v1, v2, p1}, Landroid/content/res/XmlBlock;->access$800(JI)I

    move-result v1

    if-eqz v1, :cond_1

    iget-wide v2, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    invoke-static {v2, v3, p1}, Landroid/content/res/XmlBlock;->access$900(JI)I

    move-result v2

    invoke-static {v1, v2}, Landroid/util/TypedValue;->coerceToString(II)Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_1
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    invoke-static {v0, v1, p1, p2}, Landroid/content/res/XmlBlock;->access$1000(JLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/content/res/XmlBlock$Parser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getClassAttribute()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    invoke-static {v0, v1}, Landroid/content/res/XmlBlock;->access$1300(J)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Landroid/content/res/XmlBlock$Parser;->this$0:Landroid/content/res/XmlBlock;

    iget-object v1, v1, Landroid/content/res/XmlBlock;->mStrings:Landroid/content/res/StringBlock;

    invoke-virtual {v1, v0}, Landroid/content/res/StringBlock;->get(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public getColumnNumber()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getDepth()I
    .locals 1

    iget v0, p0, Landroid/content/res/XmlBlock$Parser;->mDepth:I

    return v0
.end method

.method public getEventType()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    iget v0, p0, Landroid/content/res/XmlBlock$Parser;->mEventType:I

    return v0
.end method

.method public getFeature(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "http://xmlpull.org/v1/doc/features.html#report-namespace-prefixes"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public getIdAttribute()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    invoke-static {v0, v1}, Landroid/content/res/XmlBlock;->access$1200(J)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Landroid/content/res/XmlBlock$Parser;->this$0:Landroid/content/res/XmlBlock;

    iget-object v1, v1, Landroid/content/res/XmlBlock;->mStrings:Landroid/content/res/StringBlock;

    invoke-virtual {v1, v0}, Landroid/content/res/StringBlock;->get(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public getIdAttributeResourceValue(I)I
    .locals 2

    const-string v0, "id"

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, p1}, Landroid/content/res/XmlBlock$Parser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getInputEncoding()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getLineNumber()I
    .locals 2

    iget-wide v0, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    invoke-static {v0, v1}, Landroid/content/res/XmlBlock;->access$200(J)I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    invoke-static {v0, v1}, Landroid/content/res/XmlBlock;->nativeGetName(J)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Landroid/content/res/XmlBlock$Parser;->this$0:Landroid/content/res/XmlBlock;

    iget-object v1, v1, Landroid/content/res/XmlBlock;->mStrings:Landroid/content/res/StringBlock;

    invoke-virtual {v1, v0}, Landroid/content/res/StringBlock;->get(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    invoke-static {v0, v1}, Landroid/content/res/XmlBlock;->access$300(J)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Landroid/content/res/XmlBlock$Parser;->this$0:Landroid/content/res/XmlBlock;

    iget-object v1, v1, Landroid/content/res/XmlBlock;->mStrings:Landroid/content/res/StringBlock;

    invoke-virtual {v1, v0}, Landroid/content/res/StringBlock;->get(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    return-object v1
.end method

.method public getNamespace(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "getNamespace() not supported"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getNamespaceCount(I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "getNamespaceCount() not supported"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getNamespacePrefix(I)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "getNamespacePrefix() not supported"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getNamespaceUri(I)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "getNamespaceUri() not supported"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final getPooledString(I)Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/content/res/XmlBlock$Parser;->this$0:Landroid/content/res/XmlBlock;

    iget-object v0, v0, Landroid/content/res/XmlBlock;->mStrings:Landroid/content/res/StringBlock;

    invoke-virtual {v0, p1}, Landroid/content/res/StringBlock;->get(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getPositionDescription()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Binary XML file line #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->getLineNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "getPrefix not supported"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getStyleAttribute()I
    .locals 2

    iget-wide v0, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    invoke-static {v0, v1}, Landroid/content/res/XmlBlock;->access$1400(J)I

    move-result v0

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    invoke-static {v0, v1}, Landroid/content/res/XmlBlock;->access$100(J)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Landroid/content/res/XmlBlock$Parser;->this$0:Landroid/content/res/XmlBlock;

    iget-object v1, v1, Landroid/content/res/XmlBlock;->mStrings:Landroid/content/res/StringBlock;

    invoke-virtual {v1, v0}, Landroid/content/res/StringBlock;->get(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public getTextCharacters([I)[C
    .locals 5

    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->getText()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    aput v2, p1, v2

    const/4 v3, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    aput v4, p1, v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    new-array v1, v3, [C

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v2, v3, v1, v2}, Ljava/lang/String;->getChars(II[CI)V

    :cond_0
    return-object v1
.end method

.method public isAttributeDefault(I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isEmptyElementTag()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public isWhitespace()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public next()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Landroid/content/res/XmlBlock$Parser;->mStarted:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    iput-boolean v2, p0, Landroid/content/res/XmlBlock$Parser;->mStarted:Z

    return v1

    :cond_0
    iget-wide v3, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-nez v0, :cond_1

    return v2

    :cond_1
    iget-wide v3, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    invoke-static {v3, v4}, Landroid/content/res/XmlBlock;->nativeNext(J)I

    move-result v0

    iget-boolean v3, p0, Landroid/content/res/XmlBlock$Parser;->mDecNextDepth:Z

    if-eqz v3, :cond_2

    iget v3, p0, Landroid/content/res/XmlBlock$Parser;->mDepth:I

    sub-int/2addr v3, v2

    iput v3, p0, Landroid/content/res/XmlBlock$Parser;->mDepth:I

    iput-boolean v1, p0, Landroid/content/res/XmlBlock$Parser;->mDecNextDepth:Z

    :cond_2
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iput-boolean v2, p0, Landroid/content/res/XmlBlock$Parser;->mDecNextDepth:Z

    goto :goto_0

    :pswitch_1
    iget v1, p0, Landroid/content/res/XmlBlock$Parser;->mDepth:I

    add-int/2addr v1, v2

    iput v1, p0, Landroid/content/res/XmlBlock$Parser;->mDepth:I

    nop

    :goto_0
    iput v0, p0, Landroid/content/res/XmlBlock$Parser;->mEventType:I

    if-ne v0, v2, :cond_3

    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->close()V

    :cond_3
    return v0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public nextTag()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->next()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->isWhitespace()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->next()I

    move-result v0

    :cond_0
    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": expected start or end tag"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, p0, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    :goto_0
    return v0
.end method

.method public nextText()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->getEventType()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->next()I

    move-result v0

    const/4 v2, 0x4

    const/4 v3, 0x3

    if-ne v0, v2, :cond_1

    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->next()I

    move-result v0

    if-ne v0, v3, :cond_0

    return-object v2

    :cond_0
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": event TEXT it must be immediately followed by END_TAG"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, p0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v3

    :cond_1
    if-ne v0, v3, :cond_2

    const-string v1, ""

    return-object v1

    :cond_2
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": parser must be on START_TAG or TEXT to read text"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, p0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v2

    :cond_3
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": parser must be on START_TAG to read next text"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, p0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public nextToken()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->next()I

    move-result v0

    return v0
.end method

.method public require(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->getEventType()I

    move-result v0

    if-ne p1, v0, :cond_2

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->getNamespace()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    return-void

    :cond_2
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/content/res/XmlBlock$Parser;->TYPES:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    const-string v0, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    return-void

    :cond_0
    const-string v0, "http://xmlpull.org/v1/doc/features.html#report-namespace-prefixes"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    return-void

    :cond_1
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported feature: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string/jumbo v1, "setInput() not supported"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setInput(Ljava/io/Reader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string/jumbo v1, "setInput() not supported"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string/jumbo v1, "setProperty() not supported"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
