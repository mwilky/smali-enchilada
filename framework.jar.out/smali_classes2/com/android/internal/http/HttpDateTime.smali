.class public final Lcom/android/internal/http/HttpDateTime;
.super Ljava/lang/Object;
.source "HttpDateTime.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/http/HttpDateTime$TimeOfDay;
    }
.end annotation


# static fields
.field private static final HTTP_DATE_ANSIC_PATTERN:Ljava/util/regex/Pattern;

.field private static final HTTP_DATE_ANSIC_REGEXP:Ljava/lang/String; = "[ ]([A-Za-z]{3,9})[ ]+([0-9]{1,2})[ ]([0-9]{1,2}:[0-9][0-9]:[0-9][0-9])[ ]([0-9]{2,4})"

.field private static final HTTP_DATE_RFC_PATTERN:Ljava/util/regex/Pattern;

.field private static final HTTP_DATE_RFC_REGEXP:Ljava/lang/String; = "([0-9]{1,2})[- ]([A-Za-z]{3,9})[- ]([0-9]{2,4})[ ]([0-9]{1,2}:[0-9][0-9]:[0-9][0-9])"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "([0-9]{1,2})[- ]([A-Za-z]{3,9})[- ]([0-9]{2,4})[ ]([0-9]{1,2}:[0-9][0-9]:[0-9][0-9])"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/internal/http/HttpDateTime;->HTTP_DATE_RFC_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "[ ]([A-Za-z]{3,9})[ ]+([0-9]{1,2})[ ]([0-9]{1,2}:[0-9][0-9]:[0-9][0-9])[ ]([0-9]{2,4})"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/internal/http/HttpDateTime;->HTTP_DATE_ANSIC_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getDate(Ljava/lang/String;)I
    .locals 3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 v0, v0, -0x30

    mul-int/lit8 v0, v0, 0xa

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    add-int/lit8 v1, v1, -0x30

    add-int/2addr v0, v1

    return v0

    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 v0, v0, -0x30

    return v0
.end method

.method private static getMonth(Ljava/lang/String;)I
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    add-int/2addr v1, v3

    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v4

    add-int/2addr v1, v4

    add-int/lit16 v1, v1, -0x123

    const/16 v4, 0x16

    if-eq v1, v4, :cond_6

    const/16 v0, 0x1a

    if-eq v1, v0, :cond_5

    const/16 v0, 0x1d

    if-eq v1, v0, :cond_4

    const/16 v0, 0x20

    if-eq v1, v0, :cond_3

    const/16 v0, 0x28

    if-eq v1, v0, :cond_2

    const/16 v0, 0x2a

    if-eq v1, v0, :cond_1

    const/16 v0, 0x30

    if-eq v1, v0, :cond_0

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :pswitch_0
    const/16 v0, 0x8

    return v0

    :pswitch_1
    const/4 v0, 0x4

    return v0

    :pswitch_2
    const/16 v0, 0x9

    return v0

    :pswitch_3
    return v2

    :pswitch_4
    const/16 v0, 0xb

    return v0

    :cond_0
    const/16 v0, 0xa

    return v0

    :cond_1
    const/4 v0, 0x5

    return v0

    :cond_2
    const/4 v0, 0x6

    return v0

    :cond_3
    const/4 v0, 0x3

    return v0

    :cond_4
    return v3

    :cond_5
    const/4 v0, 0x7

    return v0

    :cond_6
    return v0

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x23
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getTime(Ljava/lang/String;)Lcom/android/internal/http/HttpDateTime$TimeOfDay;
    .locals 5

    const/4 v0, 0x0

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 v0, v0, -0x30

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x3a

    if-eq v2, v3, :cond_0

    mul-int/lit8 v2, v0, 0xa

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    add-int/lit8 v1, v1, -0x30

    add-int v0, v2, v1

    move v1, v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    add-int/lit8 v1, v1, -0x30

    mul-int/lit8 v1, v1, 0xa

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/lit8 v2, v2, -0x30

    add-int/2addr v1, v2

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v3, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/lit8 v3, v3, -0x30

    mul-int/lit8 v3, v3, 0xa

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/lit8 v2, v2, -0x30

    add-int/2addr v3, v2

    new-instance v2, Lcom/android/internal/http/HttpDateTime$TimeOfDay;

    invoke-direct {v2, v0, v1, v3}, Lcom/android/internal/http/HttpDateTime$TimeOfDay;-><init>(III)V

    return-object v2
.end method

.method private static getYear(Ljava/lang/String;)I
    .locals 6

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 v0, v0, -0x30

    mul-int/lit8 v0, v0, 0xa

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    add-int/lit8 v1, v1, -0x30

    add-int/2addr v0, v1

    const/16 v1, 0x46

    if-lt v0, v1, :cond_0

    add-int/lit16 v1, v0, 0x76c

    return v1

    :cond_0
    add-int/lit16 v1, v0, 0x7d0

    return v1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v4, 0x3

    if-ne v0, v4, :cond_2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 v0, v0, -0x30

    mul-int/lit8 v0, v0, 0x64

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    add-int/lit8 v1, v1, -0x30

    mul-int/lit8 v1, v1, 0xa

    add-int/2addr v0, v1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    add-int/lit8 v1, v1, -0x30

    add-int/2addr v0, v1

    add-int/lit16 v1, v0, 0x76c

    return v1

    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v5, 0x4

    if-ne v0, v5, :cond_3

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 v0, v0, -0x30

    mul-int/lit16 v0, v0, 0x3e8

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    add-int/lit8 v1, v1, -0x30

    mul-int/lit8 v1, v1, 0x64

    add-int/2addr v0, v1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    add-int/lit8 v1, v1, -0x30

    mul-int/lit8 v1, v1, 0xa

    add-int/2addr v0, v1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    add-int/lit8 v1, v1, -0x30

    add-int/2addr v0, v1

    return v0

    :cond_3
    const/16 v0, 0x7b2

    return v0
.end method

.method public static parse(Ljava/lang/String;)J
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x7b2

    sget-object v3, Lcom/android/internal/http/HttpDateTime;->HTTP_DATE_RFC_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eqz v4, :cond_0

    invoke-virtual {v3, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/http/HttpDateTime;->getDate(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/http/HttpDateTime;->getMonth(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/http/HttpDateTime;->getYear(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v3, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/http/HttpDateTime;->getTime(Ljava/lang/String;)Lcom/android/internal/http/HttpDateTime$TimeOfDay;

    move-result-object v4

    goto :goto_0

    :cond_0
    sget-object v4, Lcom/android/internal/http/HttpDateTime;->HTTP_DATE_ANSIC_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v4, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v4, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/http/HttpDateTime;->getMonth(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v4, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/http/HttpDateTime;->getDate(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v4, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/http/HttpDateTime;->getTime(Ljava/lang/String;)Lcom/android/internal/http/HttpDateTime$TimeOfDay;

    move-result-object v6

    invoke-virtual {v4, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/http/HttpDateTime;->getYear(Ljava/lang/String;)I

    move-result v2

    move-object v4, v6

    :goto_0
    const/16 v5, 0x7f6

    if-lt v2, v5, :cond_1

    const/16 v2, 0x7f6

    const/4 v1, 0x0

    const/4 v0, 0x1

    :cond_1
    new-instance v5, Landroid/text/format/Time;

    const-string v6, "UTC"

    invoke-direct {v5, v6}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    move-object v12, v5

    iget v6, v4, Lcom/android/internal/http/HttpDateTime$TimeOfDay;->second:I

    iget v7, v4, Lcom/android/internal/http/HttpDateTime$TimeOfDay;->minute:I

    iget v8, v4, Lcom/android/internal/http/HttpDateTime$TimeOfDay;->hour:I

    move v9, v0

    move v10, v1

    move v11, v2

    invoke-virtual/range {v5 .. v11}, Landroid/text/format/Time;->set(IIIIII)V

    const/4 v5, 0x0

    invoke-virtual {v12, v5}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v5

    return-wide v5

    :cond_2
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v5
.end method
