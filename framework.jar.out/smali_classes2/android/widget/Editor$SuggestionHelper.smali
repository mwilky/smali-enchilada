.class Landroid/widget/Editor$SuggestionHelper;
.super Ljava/lang/Object;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SuggestionHelper"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/Editor$SuggestionHelper$SuggestionSpanComparator;
    }
.end annotation


# instance fields
.field private final mSpansLengths:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/text/style/SuggestionSpan;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mSuggestionSpanComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroid/text/style/SuggestionSpan;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method private constructor <init>(Landroid/widget/Editor;)V
    .locals 1

    iput-object p1, p0, Landroid/widget/Editor$SuggestionHelper;->this$0:Landroid/widget/Editor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Landroid/widget/Editor$SuggestionHelper$SuggestionSpanComparator;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Landroid/widget/Editor$SuggestionHelper$SuggestionSpanComparator;-><init>(Landroid/widget/Editor$SuggestionHelper;Landroid/widget/Editor$1;)V

    iput-object p1, p0, Landroid/widget/Editor$SuggestionHelper;->mSuggestionSpanComparator:Ljava/util/Comparator;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroid/widget/Editor$SuggestionHelper;->mSpansLengths:Ljava/util/HashMap;

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/Editor;Landroid/widget/Editor$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/Editor$SuggestionHelper;-><init>(Landroid/widget/Editor;)V

    return-void
.end method

.method static synthetic access$2700(Landroid/widget/Editor$SuggestionHelper;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Landroid/widget/Editor$SuggestionHelper;->mSpansLengths:Ljava/util/HashMap;

    return-object v0
.end method

.method private getSortedSuggestionSpans()[Landroid/text/style/SuggestionSpan;
    .locals 10

    iget-object v0, p0, Landroid/widget/Editor$SuggestionHelper;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    iget-object v1, p0, Landroid/widget/Editor$SuggestionHelper;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/Spannable;

    const-class v2, Landroid/text/style/SuggestionSpan;

    invoke-interface {v1, v0, v0, v2}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/SuggestionSpan;

    iget-object v3, p0, Landroid/widget/Editor$SuggestionHelper;->mSpansLengths:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v2, v4

    invoke-interface {v1, v5}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    invoke-interface {v1, v5}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v7

    iget-object v8, p0, Landroid/widget/Editor$SuggestionHelper;->mSpansLengths:Ljava/util/HashMap;

    sub-int v9, v7, v6

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v5, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    iget-object v3, p0, Landroid/widget/Editor$SuggestionHelper;->mSuggestionSpanComparator:Ljava/util/Comparator;

    invoke-static {v2, v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    iget-object v3, p0, Landroid/widget/Editor$SuggestionHelper;->mSpansLengths:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    return-object v2
.end method


# virtual methods
.method public getSuggestionInfo([Landroid/widget/Editor$SuggestionInfo;Landroid/widget/Editor$SuggestionSpanInfo;)I
    .locals 20

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p0

    iget-object v3, v2, Landroid/widget/Editor$SuggestionHelper;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Landroid/text/Spannable;

    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SuggestionHelper;->getSortedSuggestionSpans()[Landroid/text/style/SuggestionSpan;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    if-nez v5, :cond_0

    return v6

    :cond_0
    const/4 v7, 0x0

    array-length v8, v4

    move v9, v7

    move v7, v6

    :goto_0
    if-ge v7, v8, :cond_7

    aget-object v10, v4, v7

    invoke-interface {v3, v10}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v11

    invoke-interface {v3, v10}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v12

    if-eqz v1, :cond_1

    invoke-virtual {v10}, Landroid/text/style/SuggestionSpan;->getFlags()I

    move-result v13

    and-int/lit8 v13, v13, 0x2

    if-eqz v13, :cond_1

    iput-object v10, v1, Landroid/widget/Editor$SuggestionSpanInfo;->mSuggestionSpan:Landroid/text/style/SuggestionSpan;

    iput v11, v1, Landroid/widget/Editor$SuggestionSpanInfo;->mSpanStart:I

    iput v12, v1, Landroid/widget/Editor$SuggestionSpanInfo;->mSpanEnd:I

    :cond_1
    invoke-virtual {v10}, Landroid/text/style/SuggestionSpan;->getSuggestions()[Ljava/lang/String;

    move-result-object v13

    array-length v14, v13

    move v15, v9

    move v9, v6

    :goto_1
    if-ge v9, v14, :cond_6

    aget-object v6, v13, v9

    const/16 v16, 0x0

    :goto_2
    move/from16 v17, v16

    move/from16 v1, v17

    if-ge v1, v15, :cond_4

    aget-object v2, v0, v1

    move-object/from16 v18, v3

    iget-object v3, v2, Landroid/widget/Editor$SuggestionInfo;->mText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v2, Landroid/widget/Editor$SuggestionInfo;->mSuggestionSpanInfo:Landroid/widget/Editor$SuggestionSpanInfo;

    iget v3, v3, Landroid/widget/Editor$SuggestionSpanInfo;->mSpanStart:I

    move-object/from16 v19, v4

    iget-object v4, v2, Landroid/widget/Editor$SuggestionInfo;->mSuggestionSpanInfo:Landroid/widget/Editor$SuggestionSpanInfo;

    iget v4, v4, Landroid/widget/Editor$SuggestionSpanInfo;->mSpanEnd:I

    if-ne v11, v3, :cond_3

    if-ne v12, v4, :cond_3

    nop

    const/4 v2, 0x0

    goto :goto_3

    :cond_2
    move-object/from16 v19, v4

    :cond_3
    add-int/lit8 v16, v1, 0x1

    move-object/from16 v3, v18

    move-object/from16 v4, v19

    move-object/from16 v1, p2

    move-object/from16 v2, p0

    goto :goto_2

    :cond_4
    move-object/from16 v18, v3

    move-object/from16 v19, v4

    aget-object v1, v0, v15

    invoke-virtual {v1, v10, v11, v12}, Landroid/widget/Editor$SuggestionInfo;->setSpanInfo(Landroid/text/style/SuggestionSpan;II)V

    iput v9, v1, Landroid/widget/Editor$SuggestionInfo;->mSuggestionIndex:I

    const/4 v2, 0x0

    iput v2, v1, Landroid/widget/Editor$SuggestionInfo;->mSuggestionStart:I

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v3

    iput v3, v1, Landroid/widget/Editor$SuggestionInfo;->mSuggestionEnd:I

    iget-object v3, v1, Landroid/widget/Editor$SuggestionInfo;->mText:Landroid/text/SpannableStringBuilder;

    iget-object v4, v1, Landroid/widget/Editor$SuggestionInfo;->mText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    invoke-virtual {v3, v2, v4, v6}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v15, v15, 0x1

    array-length v3, v0

    if-lt v15, v3, :cond_5

    return v15

    :cond_5
    :goto_3
    add-int/lit8 v9, v9, 0x1

    move v6, v2

    move-object/from16 v3, v18

    move-object/from16 v4, v19

    move-object/from16 v1, p2

    move-object/from16 v2, p0

    goto :goto_1

    :cond_6
    move-object/from16 v18, v3

    move-object/from16 v19, v4

    move v2, v6

    add-int/lit8 v7, v7, 0x1

    move v9, v15

    move-object/from16 v1, p2

    move-object/from16 v2, p0

    goto/16 :goto_0

    :cond_7
    move-object/from16 v18, v3

    move-object/from16 v19, v4

    return v9
.end method
