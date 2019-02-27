.class Landroid/media/WebVttParser$3;
.super Ljava/lang/Object;
.source "WebVttRenderer.java"

# interfaces
.implements Landroid/media/WebVttParser$Phase;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/WebVttParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Landroid/media/WebVttParser;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Landroid/media/WebVttParser;

    return-void
.end method

.method constructor <init>(Landroid/media/WebVttParser;)V
    .locals 0

    iput-object p1, p0, Landroid/media/WebVttParser$3;->this$0:Landroid/media/WebVttParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Ljava/lang/String;)V
    .locals 5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/media/WebVttParser$3;->this$0:Landroid/media/WebVttParser;

    iget-object v1, p0, Landroid/media/WebVttParser$3;->this$0:Landroid/media/WebVttParser;

    invoke-static {v1}, Landroid/media/WebVttParser;->access$600(Landroid/media/WebVttParser;)Landroid/media/WebVttParser$Phase;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/media/WebVttParser;->access$102(Landroid/media/WebVttParser;Landroid/media/WebVttParser$Phase;)Landroid/media/WebVttParser$Phase;

    goto :goto_0

    :cond_0
    const-string v0, "-->"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/media/WebVttParser$3;->this$0:Landroid/media/WebVttParser;

    iget-object v1, p0, Landroid/media/WebVttParser$3;->this$0:Landroid/media/WebVttParser;

    invoke-static {v1}, Landroid/media/WebVttParser;->access$700(Landroid/media/WebVttParser;)Landroid/media/WebVttParser$Phase;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/media/WebVttParser;->access$102(Landroid/media/WebVttParser;Landroid/media/WebVttParser$Phase;)Landroid/media/WebVttParser$Phase;

    iget-object v0, p0, Landroid/media/WebVttParser$3;->this$0:Landroid/media/WebVttParser;

    invoke-static {v0}, Landroid/media/WebVttParser;->access$100(Landroid/media/WebVttParser;)Landroid/media/WebVttParser$Phase;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/media/WebVttParser$Phase;->parse(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_3

    :cond_2
    iget-object v1, p0, Landroid/media/WebVttParser$3;->this$0:Landroid/media/WebVttParser;

    const-string/jumbo v2, "meta data header has invalid format"

    invoke-static {v1, v2, p1}, Landroid/media/WebVttParser;->access$000(Landroid/media/WebVttParser;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Region"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p0, v2}, Landroid/media/WebVttParser$3;->parseRegion(Ljava/lang/String;)Landroid/media/TextTrackRegion;

    move-result-object v3

    iget-object v4, p0, Landroid/media/WebVttParser$3;->this$0:Landroid/media/WebVttParser;

    invoke-static {v4}, Landroid/media/WebVttParser;->access$800(Landroid/media/WebVttParser;)Landroid/media/WebVttCueListener;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/media/WebVttCueListener;->onRegionParsed(Landroid/media/TextTrackRegion;)V

    :cond_4
    :goto_0
    return-void
.end method

.method parseRegion(Ljava/lang/String;)Landroid/media/TextTrackRegion;
    .locals 21

    move-object/from16 v1, p0

    new-instance v0, Landroid/media/TextTrackRegion;

    invoke-direct {v0}, Landroid/media/TextTrackRegion;-><init>()V

    move-object v2, v0

    const-string v0, " +"

    move-object/from16 v3, p1

    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-ge v7, v5, :cond_c

    aget-object v8, v4, v7

    const/16 v0, 0x3d

    invoke-virtual {v8, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    if-lez v9, :cond_b

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne v9, v0, :cond_0

    goto/16 :goto_5

    :cond_0
    invoke-virtual {v8, v6, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    add-int/lit8 v0, v9, 0x1

    invoke-virtual {v8, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    const-string v0, "id"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object v14, v2, Landroid/media/TextTrackRegion;->mId:Ljava/lang/String;

    goto/16 :goto_5

    :cond_1
    const-string/jumbo v0, "width"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :try_start_0
    invoke-static {v14}, Landroid/media/WebVttParser;->parseFloatPercentage(Ljava/lang/String;)F

    move-result v0

    iput v0, v2, Landroid/media/TextTrackRegion;->mWidth:F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_5

    :catch_0
    move-exception v0

    iget-object v10, v1, Landroid/media/WebVttParser$3;->this$0:Landroid/media/WebVttParser;

    const-string/jumbo v11, "region setting"

    const-string v13, "has invalid value"

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v16

    move-object v12, v15

    move-object/from16 v17, v14

    move-object/from16 v14, v16

    move-object v6, v15

    move-object/from16 v15, v17

    invoke-static/range {v10 .. v15}, Landroid/media/WebVttParser;->access$400(Landroid/media/WebVttParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    nop

    :cond_2
    :goto_1
    const/16 v18, 0x0

    goto/16 :goto_6

    :cond_3
    move-object/from16 v17, v14

    move-object v6, v15

    const-string/jumbo v0, "lines"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, ".*[^0-9].*"

    move-object/from16 v15, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, v1, Landroid/media/WebVttParser$3;->this$0:Landroid/media/WebVttParser;

    const-string/jumbo v10, "lines"

    const-string v11, "contains an invalid character"

    invoke-static {v0, v10, v6, v11, v15}, Landroid/media/WebVttParser;->access$500(Landroid/media/WebVttParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    :try_start_1
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Landroid/media/TextTrackRegion;->mLines:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    iget-object v10, v1, Landroid/media/WebVttParser$3;->this$0:Landroid/media/WebVttParser;

    const-string/jumbo v11, "region setting"

    const-string v12, "is not numeric"

    invoke-static {v10, v11, v6, v12, v15}, Landroid/media/WebVttParser;->access$500(Landroid/media/WebVttParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    goto :goto_1

    :cond_5
    move-object/from16 v15, v17

    const-string/jumbo v0, "regionanchor"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string/jumbo v0, "viewportanchor"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_3

    :cond_6
    const-string/jumbo v0, "scroll"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "up"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x12d

    iput v0, v2, Landroid/media/TextTrackRegion;->mScrollValue:I

    goto :goto_1

    :cond_7
    iget-object v0, v1, Landroid/media/WebVttParser$3;->this$0:Landroid/media/WebVttParser;

    const-string/jumbo v10, "region setting"

    const-string v11, "has invalid value"

    invoke-static {v0, v10, v6, v11, v15}, Landroid/media/WebVttParser;->access$500(Landroid/media/WebVttParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    :goto_3
    const-string v0, ","

    invoke-virtual {v15, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    if-gez v14, :cond_9

    iget-object v0, v1, Landroid/media/WebVttParser$3;->this$0:Landroid/media/WebVttParser;

    const-string/jumbo v10, "region setting"

    const-string v11, "contains no comma"

    invoke-static {v0, v10, v6, v11, v15}, Landroid/media/WebVttParser;->access$500(Landroid/media/WebVttParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_9
    const/4 v10, 0x0

    invoke-virtual {v15, v10, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    add-int/lit8 v0, v14, 0x1

    invoke-virtual {v15, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    move-object v12, v0

    :try_start_2
    invoke-static {v13}, Landroid/media/WebVttParser;->parseFloatPercentage(Ljava/lang/String;)F

    move-result v0
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_3

    move v11, v0

    nop

    nop

    :try_start_3
    invoke-static {v12}, Landroid/media/WebVttParser;->parseFloatPercentage(Ljava/lang/String;)F

    move-result v0
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2

    nop

    nop

    const/4 v10, 0x0

    invoke-virtual {v6, v10}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v10, 0x72

    if-ne v3, v10, :cond_a

    iput v11, v2, Landroid/media/TextTrackRegion;->mAnchorPointX:F

    iput v0, v2, Landroid/media/TextTrackRegion;->mAnchorPointY:F

    goto :goto_4

    :cond_a
    iput v11, v2, Landroid/media/TextTrackRegion;->mViewportAnchorPointX:F

    iput v0, v2, Landroid/media/TextTrackRegion;->mViewportAnchorPointY:F

    :goto_4
    goto/16 :goto_1

    :catch_2
    move-exception v0

    move-object v3, v0

    iget-object v10, v1, Landroid/media/WebVttParser$3;->this$0:Landroid/media/WebVttParser;

    const-string/jumbo v3, "region setting"

    const-string v16, "has invalid y component"

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    move/from16 v19, v11

    move-object v11, v3

    move-object v3, v12

    move-object v12, v6

    move-object/from16 v20, v13

    move-object/from16 v13, v16

    move/from16 v16, v14

    move-object/from16 v14, v17

    move-object/from16 v17, v15

    move-object v15, v3

    invoke-static/range {v10 .. v15}, Landroid/media/WebVttParser;->access$400(Landroid/media/WebVttParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :catch_3
    move-exception v0

    move-object v3, v12

    move-object/from16 v20, v13

    move/from16 v16, v14

    move-object/from16 v17, v15

    const/16 v18, 0x0

    move-object v10, v0

    iget-object v10, v1, Landroid/media/WebVttParser$3;->this$0:Landroid/media/WebVttParser;

    const-string/jumbo v11, "region setting"

    const-string v13, "has invalid x component"

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v14

    move-object v12, v6

    move-object/from16 v15, v20

    invoke-static/range {v10 .. v15}, Landroid/media/WebVttParser;->access$400(Landroid/media/WebVttParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_b
    :goto_5
    move/from16 v18, v6

    :goto_6
    add-int/lit8 v7, v7, 0x1

    move/from16 v6, v18

    move-object/from16 v3, p1

    goto/16 :goto_0

    :cond_c
    return-object v2
.end method
