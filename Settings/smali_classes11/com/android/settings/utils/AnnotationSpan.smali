.class public Lcom/android/settings/utils/AnnotationSpan;
.super Landroid/text/style/URLSpan;
.source "AnnotationSpan.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/utils/AnnotationSpan$LinkInfo;
    }
.end annotation


# instance fields
.field private final mClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method private constructor <init>(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "lsn"    # Landroid/view/View$OnClickListener;

    .line 42
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    .line 43
    iput-object p1, p0, Lcom/android/settings/utils/AnnotationSpan;->mClickListener:Landroid/view/View$OnClickListener;

    .line 44
    return-void
.end method

.method public static varargs linkify(Ljava/lang/CharSequence;[Lcom/android/settings/utils/AnnotationSpan$LinkInfo;)Ljava/lang/CharSequence;
    .locals 17
    .param p0, "rawText"    # Ljava/lang/CharSequence;
    .param p1, "linkInfos"    # [Lcom/android/settings/utils/AnnotationSpan$LinkInfo;

    .line 60
    move-object/from16 v0, p1

    new-instance v1, Landroid/text/SpannableString;

    move-object/from16 v2, p0

    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 61
    .local v1, "msg":Landroid/text/SpannableString;
    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v3

    const-class v4, Landroid/text/Annotation;

    const/4 v5, 0x0

    invoke-virtual {v1, v5, v3, v4}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/text/Annotation;

    .line 62
    .local v3, "spans":[Landroid/text/Annotation;
    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 63
    .local v4, "builder":Landroid/text/SpannableStringBuilder;
    array-length v6, v3

    move v7, v5

    :goto_0
    if-ge v7, v6, :cond_3

    aget-object v8, v3, v7

    .line 64
    .local v8, "annotation":Landroid/text/Annotation;
    invoke-virtual {v8}, Landroid/text/Annotation;->getValue()Ljava/lang/String;

    move-result-object v9

    .line 65
    .local v9, "key":Ljava/lang/String;
    invoke-virtual {v1, v8}, Landroid/text/SpannableString;->getSpanStart(Ljava/lang/Object;)I

    move-result v10

    .line 66
    .local v10, "start":I
    invoke-virtual {v1, v8}, Landroid/text/SpannableString;->getSpanEnd(Ljava/lang/Object;)I

    move-result v11

    .line 67
    .local v11, "end":I
    const/4 v12, 0x0

    .line 68
    .local v12, "link":Lcom/android/settings/utils/AnnotationSpan;
    array-length v13, v0

    move v14, v5

    :goto_1
    if-ge v14, v13, :cond_1

    aget-object v15, v0, v14

    .line 69
    .local v15, "linkInfo":Lcom/android/settings/utils/AnnotationSpan$LinkInfo;
    invoke-static {v15}, Lcom/android/settings/utils/AnnotationSpan$LinkInfo;->access$000(Lcom/android/settings/utils/AnnotationSpan$LinkInfo;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 70
    new-instance v5, Lcom/android/settings/utils/AnnotationSpan;

    invoke-static {v15}, Lcom/android/settings/utils/AnnotationSpan$LinkInfo;->access$100(Lcom/android/settings/utils/AnnotationSpan$LinkInfo;)Landroid/view/View$OnClickListener;

    move-result-object v13

    invoke-direct {v5, v13}, Lcom/android/settings/utils/AnnotationSpan;-><init>(Landroid/view/View$OnClickListener;)V

    move-object v12, v5

    .line 71
    goto :goto_2

    .line 68
    .end local v15    # "linkInfo":Lcom/android/settings/utils/AnnotationSpan$LinkInfo;
    :cond_0
    add-int/lit8 v14, v14, 0x1

    const/4 v5, 0x0

    goto :goto_1

    .line 74
    :cond_1
    :goto_2
    if-eqz v12, :cond_2

    .line 75
    invoke-virtual {v1, v12}, Landroid/text/SpannableString;->getSpanFlags(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v4, v12, v10, v11, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 63
    .end local v8    # "annotation":Landroid/text/Annotation;
    .end local v9    # "key":Ljava/lang/String;
    .end local v10    # "start":I
    .end local v11    # "end":I
    .end local v12    # "link":Lcom/android/settings/utils/AnnotationSpan;
    :cond_2
    add-int/lit8 v7, v7, 0x1

    const/4 v5, 0x0

    goto :goto_0

    .line 78
    :cond_3
    return-object v4
.end method

.method public static varargs linkifyRemoveFingerprintUrl(Ljava/lang/CharSequence;[Lcom/android/settings/utils/AnnotationSpan$LinkInfo;)Ljava/lang/CharSequence;
    .locals 17
    .param p0, "rawText"    # Ljava/lang/CharSequence;
    .param p1, "linkInfos"    # [Lcom/android/settings/utils/AnnotationSpan$LinkInfo;

    .line 83
    move-object/from16 v0, p1

    new-instance v1, Landroid/text/SpannableString;

    move-object/from16 v2, p0

    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 84
    .local v1, "msg":Landroid/text/SpannableString;
    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v3

    const-class v4, Landroid/text/Annotation;

    const/4 v5, 0x0

    invoke-virtual {v1, v5, v3, v4}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/text/Annotation;

    .line 85
    .local v3, "spans":[Landroid/text/Annotation;
    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 86
    .local v4, "builder":Landroid/text/SpannableStringBuilder;
    array-length v6, v3

    move v7, v5

    :goto_0
    if-ge v7, v6, :cond_4

    aget-object v8, v3, v7

    .line 87
    .local v8, "annotation":Landroid/text/Annotation;
    invoke-virtual {v8}, Landroid/text/Annotation;->getValue()Ljava/lang/String;

    move-result-object v9

    .line 88
    .local v9, "key":Ljava/lang/String;
    invoke-virtual {v1, v8}, Landroid/text/SpannableString;->getSpanStart(Ljava/lang/Object;)I

    move-result v10

    .line 89
    .local v10, "start":I
    invoke-virtual {v1, v8}, Landroid/text/SpannableString;->getSpanEnd(Ljava/lang/Object;)I

    move-result v11

    .line 90
    .local v11, "end":I
    const/4 v12, 0x0

    .line 91
    .local v12, "link":Lcom/android/settings/utils/AnnotationSpan;
    array-length v13, v0

    move v14, v5

    :goto_1
    if-ge v14, v13, :cond_2

    aget-object v15, v0, v14

    .line 92
    .local v15, "linkInfo":Lcom/android/settings/utils/AnnotationSpan$LinkInfo;
    invoke-static {v15}, Lcom/android/settings/utils/AnnotationSpan$LinkInfo;->access$000(Lcom/android/settings/utils/AnnotationSpan$LinkInfo;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "url"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    if-ltz v10, :cond_0

    if-ge v10, v11, :cond_0

    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v0

    if-gt v11, v0, :cond_0

    .line 94
    invoke-virtual {v4, v10, v11}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 95
    const-string v0, "AnnotationSpan"

    const-string v5, "refresh summary"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    return-object v4

    .line 99
    :cond_0
    invoke-static {v15}, Lcom/android/settings/utils/AnnotationSpan$LinkInfo;->access$000(Lcom/android/settings/utils/AnnotationSpan$LinkInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    new-instance v0, Lcom/android/settings/utils/AnnotationSpan;

    invoke-static {v15}, Lcom/android/settings/utils/AnnotationSpan$LinkInfo;->access$100(Lcom/android/settings/utils/AnnotationSpan$LinkInfo;)Landroid/view/View$OnClickListener;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/android/settings/utils/AnnotationSpan;-><init>(Landroid/view/View$OnClickListener;)V

    move-object v12, v0

    .line 101
    goto :goto_2

    .line 91
    .end local v15    # "linkInfo":Lcom/android/settings/utils/AnnotationSpan$LinkInfo;
    :cond_1
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p1

    const/4 v5, 0x0

    goto :goto_1

    .line 104
    :cond_2
    :goto_2
    if-eqz v12, :cond_3

    .line 105
    invoke-virtual {v1, v12}, Landroid/text/SpannableString;->getSpanFlags(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {v4, v12, v10, v11, v0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 86
    .end local v8    # "annotation":Landroid/text/Annotation;
    .end local v9    # "key":Ljava/lang/String;
    .end local v10    # "start":I
    .end local v11    # "end":I
    .end local v12    # "link":Lcom/android/settings/utils/AnnotationSpan;
    :cond_3
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p1

    const/4 v5, 0x0

    goto :goto_0

    .line 108
    :cond_4
    return-object v4
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "widget"    # Landroid/view/View;

    .line 48
    iget-object v0, p0, Lcom/android/settings/utils/AnnotationSpan;->mClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/android/settings/utils/AnnotationSpan;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 51
    :cond_0
    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1
    .param p1, "ds"    # Landroid/text/TextPaint;

    .line 55
    invoke-super {p0, p1}, Landroid/text/style/URLSpan;->updateDrawState(Landroid/text/TextPaint;)V

    .line 56
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    .line 57
    return-void
.end method
