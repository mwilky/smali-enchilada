.class public Lcom/android/settings/search/indexing/IndexData;
.super Ljava/lang/Object;
.source "IndexData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/search/indexing/IndexData$Builder;
    }
.end annotation


# static fields
.field private static final EMPTY:Ljava/lang/String; = ""

.field private static final HYPHEN:Ljava/lang/String; = "-"

.field private static final LIST_DELIMITERS:Ljava/lang/String; = "[,]\\s*"

.field private static final NON_BREAKING_HYPHEN:Ljava/lang/String; = "\u2011"

.field private static final REMOVE_DIACRITICALS_PATTERN:Ljava/util/regex/Pattern;

.field private static final SPACE:Ljava/lang/String; = " "


# instance fields
.field public final childClassName:Ljava/lang/String;

.field public final className:Ljava/lang/String;

.field public final enabled:Z

.field public final entries:Ljava/lang/String;

.field public final iconResId:I

.field public final intentAction:Ljava/lang/String;

.field public final intentTargetClass:Ljava/lang/String;

.field public final intentTargetPackage:Ljava/lang/String;

.field public final key:Ljava/lang/String;

.field public final locale:Ljava/lang/String;

.field public final normalizedSummaryOn:Ljava/lang/String;

.field public final normalizedTitle:Ljava/lang/String;

.field public final payload:[B

.field public final payloadType:I

.field public final screenTitle:Ljava/lang/String;

.field public final spaceDelimitedKeywords:Ljava/lang/String;

.field public final updatedSummaryOn:Ljava/lang/String;

.field public final updatedTitle:Ljava/lang/String;

.field public final userId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 66
    const-string v0, "\\p{InCombiningDiacriticalMarks}+"

    .line 67
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/settings/search/indexing/IndexData;->REMOVE_DIACRITICALS_PATTERN:Ljava/util/regex/Pattern;

    .line 66
    return-void
.end method

.method private constructor <init>(Lcom/android/settings/search/indexing/IndexData$Builder;)V
    .locals 2
    .param p1, "builder"    # Lcom/android/settings/search/indexing/IndexData$Builder;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/search/indexing/IndexData;->locale:Ljava/lang/String;

    .line 71
    invoke-static {p1}, Lcom/android/settings/search/indexing/IndexData$Builder;->access$000(Lcom/android/settings/search/indexing/IndexData$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/search/indexing/IndexData;->normalizeHyphen(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/search/indexing/IndexData;->updatedTitle:Ljava/lang/String;

    .line 72
    invoke-static {p1}, Lcom/android/settings/search/indexing/IndexData$Builder;->access$100(Lcom/android/settings/search/indexing/IndexData$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/search/indexing/IndexData;->normalizeHyphen(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/search/indexing/IndexData;->updatedSummaryOn:Ljava/lang/String;

    .line 73
    sget-object v0, Ljava/util/Locale;->JAPAN:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/search/indexing/IndexData;->locale:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    invoke-static {p1}, Lcom/android/settings/search/indexing/IndexData$Builder;->access$000(Lcom/android/settings/search/indexing/IndexData$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/search/indexing/IndexData;->normalizeJapaneseString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/search/indexing/IndexData;->normalizedTitle:Ljava/lang/String;

    .line 76
    invoke-static {p1}, Lcom/android/settings/search/indexing/IndexData$Builder;->access$100(Lcom/android/settings/search/indexing/IndexData$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/search/indexing/IndexData;->normalizeJapaneseString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/search/indexing/IndexData;->normalizedSummaryOn:Ljava/lang/String;

    goto :goto_0

    .line 78
    :cond_0
    invoke-static {p1}, Lcom/android/settings/search/indexing/IndexData$Builder;->access$000(Lcom/android/settings/search/indexing/IndexData$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/search/indexing/IndexData;->normalizeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/search/indexing/IndexData;->normalizedTitle:Ljava/lang/String;

    .line 79
    invoke-static {p1}, Lcom/android/settings/search/indexing/IndexData$Builder;->access$100(Lcom/android/settings/search/indexing/IndexData$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/search/indexing/IndexData;->normalizeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/search/indexing/IndexData;->normalizedSummaryOn:Ljava/lang/String;

    .line 81
    :goto_0
    invoke-static {p1}, Lcom/android/settings/search/indexing/IndexData$Builder;->access$200(Lcom/android/settings/search/indexing/IndexData$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/search/indexing/IndexData;->entries:Ljava/lang/String;

    .line 82
    invoke-static {p1}, Lcom/android/settings/search/indexing/IndexData$Builder;->access$300(Lcom/android/settings/search/indexing/IndexData$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/search/indexing/IndexData;->className:Ljava/lang/String;

    .line 83
    invoke-static {p1}, Lcom/android/settings/search/indexing/IndexData$Builder;->access$400(Lcom/android/settings/search/indexing/IndexData$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/search/indexing/IndexData;->childClassName:Ljava/lang/String;

    .line 84
    invoke-static {p1}, Lcom/android/settings/search/indexing/IndexData$Builder;->access$500(Lcom/android/settings/search/indexing/IndexData$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/search/indexing/IndexData;->screenTitle:Ljava/lang/String;

    .line 85
    invoke-static {p1}, Lcom/android/settings/search/indexing/IndexData$Builder;->access$600(Lcom/android/settings/search/indexing/IndexData$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/search/indexing/IndexData;->iconResId:I

    .line 86
    invoke-static {p1}, Lcom/android/settings/search/indexing/IndexData$Builder;->access$700(Lcom/android/settings/search/indexing/IndexData$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/search/indexing/IndexData;->normalizeKeywords(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/search/indexing/IndexData;->spaceDelimitedKeywords:Ljava/lang/String;

    .line 87
    invoke-static {p1}, Lcom/android/settings/search/indexing/IndexData$Builder;->access$800(Lcom/android/settings/search/indexing/IndexData$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/search/indexing/IndexData;->intentAction:Ljava/lang/String;

    .line 88
    invoke-static {p1}, Lcom/android/settings/search/indexing/IndexData$Builder;->access$900(Lcom/android/settings/search/indexing/IndexData$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/search/indexing/IndexData;->intentTargetPackage:Ljava/lang/String;

    .line 89
    invoke-static {p1}, Lcom/android/settings/search/indexing/IndexData$Builder;->access$1000(Lcom/android/settings/search/indexing/IndexData$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/search/indexing/IndexData;->intentTargetClass:Ljava/lang/String;

    .line 90
    invoke-static {p1}, Lcom/android/settings/search/indexing/IndexData$Builder;->access$1100(Lcom/android/settings/search/indexing/IndexData$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/search/indexing/IndexData;->enabled:Z

    .line 91
    invoke-static {p1}, Lcom/android/settings/search/indexing/IndexData$Builder;->access$1200(Lcom/android/settings/search/indexing/IndexData$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/search/indexing/IndexData;->key:Ljava/lang/String;

    .line 92
    invoke-static {p1}, Lcom/android/settings/search/indexing/IndexData$Builder;->access$1300(Lcom/android/settings/search/indexing/IndexData$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/search/indexing/IndexData;->userId:I

    .line 93
    invoke-static {p1}, Lcom/android/settings/search/indexing/IndexData$Builder;->access$1400(Lcom/android/settings/search/indexing/IndexData$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/search/indexing/IndexData;->payloadType:I

    .line 94
    invoke-static {p1}, Lcom/android/settings/search/indexing/IndexData$Builder;->access$1500(Lcom/android/settings/search/indexing/IndexData$Builder;)Lcom/android/settings/search/ResultPayload;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/android/settings/search/indexing/IndexData$Builder;->access$1500(Lcom/android/settings/search/indexing/IndexData$Builder;)Lcom/android/settings/search/ResultPayload;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/search/ResultPayloadUtils;->marshall(Lcom/android/settings/search/ResultPayload;)[B

    move-result-object v0

    goto :goto_1

    .line 95
    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput-object v0, p0, Lcom/android/settings/search/indexing/IndexData;->payload:[B

    .line 96
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/search/indexing/IndexData$Builder;Lcom/android/settings/search/indexing/IndexData$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings/search/indexing/IndexData$Builder;
    .param p2, "x1"    # Lcom/android/settings/search/indexing/IndexData$1;

    .line 38
    invoke-direct {p0, p1}, Lcom/android/settings/search/indexing/IndexData;-><init>(Lcom/android/settings/search/indexing/IndexData$Builder;)V

    return-void
.end method

.method public static normalizeHyphen(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "input"    # Ljava/lang/String;

    .line 128
    if-eqz p0, :cond_0

    const-string v0, "\u2011"

    const-string v1, "-"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public static normalizeJapaneseString(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "input"    # Ljava/lang/String;

    .line 143
    if-eqz p0, :cond_0

    const-string v0, "-"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 144
    .local v0, "nohyphen":Ljava/lang/String;
    :goto_0
    sget-object v1, Ljava/text/Normalizer$Form;->NFKD:Ljava/text/Normalizer$Form;

    invoke-static {v0, v1}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object v1

    .line 145
    .local v1, "normalized":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 146
    .local v2, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    .line 147
    .local v3, "length":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v3, :cond_2

    .line 148
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 150
    .local v5, "c":C
    const/16 v6, 0x3041

    if-lt v5, v6, :cond_1

    const/16 v6, 0x3096

    if-gt v5, v6, :cond_1

    .line 151
    add-int/lit16 v6, v5, -0x3041

    add-int/lit16 v6, v6, 0x30a1

    int-to-char v6, v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 153
    :cond_1
    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 147
    .end local v5    # "c":C
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 157
    .end local v4    # "i":I
    :cond_2
    sget-object v4, Lcom/android/settings/search/indexing/IndexData;->REMOVE_DIACRITICALS_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static normalizeKeywords(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "input"    # Ljava/lang/String;

    .line 121
    if-eqz p0, :cond_0

    const-string v0, "[,]\\s*"

    const-string v1, " "

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public static normalizeString(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "input"    # Ljava/lang/String;

    .line 135
    invoke-static {p0}, Lcom/android/settings/search/indexing/IndexData;->normalizeHyphen(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 136
    .local v0, "normalizedHypen":Ljava/lang/String;
    if-eqz p0, :cond_0

    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    .line 137
    .local v1, "nohyphen":Ljava/lang/String;
    :goto_0
    sget-object v2, Ljava/text/Normalizer$Form;->NFD:Ljava/text/Normalizer$Form;

    invoke-static {v1, v2}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object v2

    .line 139
    .local v2, "normalized":Ljava/lang/String;
    sget-object v3, Lcom/android/settings/search/indexing/IndexData;->REMOVE_DIACRITICALS_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public getDocId()I
    .locals 3

    .line 104
    iget-object v0, p0, Lcom/android/settings/search/indexing/IndexData;->key:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/settings/search/indexing/IndexData;->updatedTitle:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/settings/search/indexing/IndexData;->className:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/settings/search/indexing/IndexData;->screenTitle:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/android/settings/search/indexing/IndexData;->intentTargetClass:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    goto :goto_0

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/android/settings/search/indexing/IndexData;->key:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 104
    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/search/indexing/IndexData;->updatedTitle:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ": "

    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/search/indexing/IndexData;->updatedSummaryOn:Ljava/lang/String;

    .line 113
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 111
    return-object v0
.end method
