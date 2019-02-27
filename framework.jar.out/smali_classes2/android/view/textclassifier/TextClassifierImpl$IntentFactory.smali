.class final Landroid/view/textclassifier/TextClassifierImpl$IntentFactory;
.super Ljava/lang/Object;
.source "TextClassifierImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/textclassifier/TextClassifierImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "IntentFactory"
.end annotation


# static fields
.field private static final DEFAULT_EVENT_DURATION:J

.field private static final MIN_EVENT_FUTURE_MILLIS:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Landroid/view/textclassifier/TextClassifierImpl$IntentFactory;->MIN_EVENT_FUTURE_MILLIS:J

    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Landroid/view/textclassifier/TextClassifierImpl$IntentFactory;->DEFAULT_EVENT_DURATION:J

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/content/Context;Ljava/time/Instant;Landroid/view/textclassifier/TextClassifierImplNative$ClassificationResult;Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/time/Instant;",
            "Landroid/view/textclassifier/TextClassifierImplNative$ClassificationResult;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/view/textclassifier/TextClassifierImpl$LabeledIntent;",
            ">;"
        }
    .end annotation

    invoke-virtual {p2}, Landroid/view/textclassifier/TextClassifierImplNative$ClassificationResult;->getCollection()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "datetime"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x5

    goto :goto_1

    :sswitch_1
    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_2
    const-string v1, "email"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :sswitch_3
    const-string v1, "date"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_1

    :sswitch_4
    const-string/jumbo v1, "url"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    goto :goto_1

    :sswitch_5
    const-string v1, "address"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_1

    :sswitch_6
    const-string v1, "flight"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x6

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v1, -0x1

    :goto_1
    packed-switch v1, :pswitch_data_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    return-object v1

    :pswitch_0
    invoke-static {p0, p3}, Landroid/view/textclassifier/TextClassifierImpl$IntentFactory;->createForFlight(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1

    :pswitch_1
    invoke-virtual {p2}, Landroid/view/textclassifier/TextClassifierImplNative$ClassificationResult;->getDatetimeResult()Landroid/view/textclassifier/TextClassifierImplNative$DatetimeResult;

    move-result-object v1

    if-eqz v1, :cond_1

    nop

    invoke-virtual {p2}, Landroid/view/textclassifier/TextClassifierImplNative$ClassificationResult;->getDatetimeResult()Landroid/view/textclassifier/TextClassifierImplNative$DatetimeResult;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/textclassifier/TextClassifierImplNative$DatetimeResult;->getTimeMsUtc()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v1

    invoke-static {p0, v0, p1, v1}, Landroid/view/textclassifier/TextClassifierImpl$IntentFactory;->createForDatetime(Landroid/content/Context;Ljava/lang/String;Ljava/time/Instant;Ljava/time/Instant;)Ljava/util/List;

    move-result-object v2

    return-object v2

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    return-object v1

    :pswitch_2
    invoke-static {p0, p3}, Landroid/view/textclassifier/TextClassifierImpl$IntentFactory;->createForUrl(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1

    :pswitch_3
    invoke-static {p0, p3}, Landroid/view/textclassifier/TextClassifierImpl$IntentFactory;->createForAddress(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1

    :pswitch_4
    invoke-static {p0, p3}, Landroid/view/textclassifier/TextClassifierImpl$IntentFactory;->createForPhone(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1

    :pswitch_5
    invoke-static {p0, p3}, Landroid/view/textclassifier/TextClassifierImpl$IntentFactory;->createForEmail(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4bce7b90 -> :sswitch_6
        -0x4468640c -> :sswitch_5
        0x1c56f -> :sswitch_4
        0x2eefae -> :sswitch_3
        0x5c24b9c -> :sswitch_2
        0x65b3d6e -> :sswitch_1
        0x6ae9bb7b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static createCalendarCreateEventIntent(Landroid/content/Context;Ljava/time/Instant;Ljava/lang/String;)Landroid/view/textclassifier/TextClassifierImpl$LabeledIntent;
    .locals 10

    const-string v0, "date"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    new-instance v1, Landroid/view/textclassifier/TextClassifierImpl$LabeledIntent;

    const v2, 0x104005d

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x104005e

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.INSERT"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v5, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v4

    const-string v5, "allDay"

    invoke-virtual {v4, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v4

    const-string v5, "beginTime"

    invoke-virtual {p1}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v6

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v4

    const-string v5, "endTime"

    invoke-virtual {p1}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v6

    sget-wide v8, Landroid/view/textclassifier/TextClassifierImpl$IntentFactory;->DEFAULT_EVENT_DURATION:J

    add-long/2addr v6, v8

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {p1}, Ljava/time/Instant;->hashCode()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/view/textclassifier/TextClassifierImpl$LabeledIntent;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;I)V

    return-object v1
.end method

.method private static createCalendarViewIntent(Landroid/content/Context;Ljava/time/Instant;)Landroid/view/textclassifier/TextClassifierImpl$LabeledIntent;
    .locals 6

    sget-object v0, Landroid/provider/CalendarContract;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "time"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {p1}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    new-instance v1, Landroid/view/textclassifier/TextClassifierImpl$LabeledIntent;

    const v2, 0x10406b7

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x10406b8

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/view/textclassifier/TextClassifierImpl$LabeledIntent;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;I)V

    return-object v1
.end method

.method private static createForAddress(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/view/textclassifier/TextClassifierImpl$LabeledIntent;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    const-string v1, "UTF-8"

    invoke-static {p1, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/view/textclassifier/TextClassifierImpl$LabeledIntent;

    const v3, 0x1040365

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x1040366

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v6, "geo:0,0?q=%s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v1, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5, v8}, Landroid/view/textclassifier/TextClassifierImpl$LabeledIntent;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;I)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "androidtc"

    const-string v3, "Could not encode address"

    invoke-static {v2, v3, v1}, Landroid/view/textclassifier/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-object v0
.end method

.method private static createForDatetime(Landroid/content/Context;Ljava/lang/String;Ljava/time/Instant;Ljava/time/Instant;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/time/Instant;",
            "Ljava/time/Instant;",
            ")",
            "Ljava/util/List<",
            "Landroid/view/textclassifier/TextClassifierImpl$LabeledIntent;",
            ">;"
        }
    .end annotation

    if-nez p2, :cond_0

    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object p2

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0, p3}, Landroid/view/textclassifier/TextClassifierImpl$IntentFactory;->createCalendarViewIntent(Landroid/content/Context;Ljava/time/Instant;)Landroid/view/textclassifier/TextClassifierImpl$LabeledIntent;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Ljava/time/temporal/ChronoUnit;->MILLIS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {p2, p3, v1}, Ljava/time/Instant;->until(Ljava/time/temporal/Temporal;Ljava/time/temporal/TemporalUnit;)J

    move-result-wide v1

    sget-wide v3, Landroid/view/textclassifier/TextClassifierImpl$IntentFactory;->MIN_EVENT_FUTURE_MILLIS:J

    cmp-long v3, v1, v3

    if-lez v3, :cond_1

    invoke-static {p0, p3, p1}, Landroid/view/textclassifier/TextClassifierImpl$IntentFactory;->createCalendarCreateEventIntent(Landroid/content/Context;Ljava/time/Instant;Ljava/lang/String;)Landroid/view/textclassifier/TextClassifierImpl$LabeledIntent;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object v0
.end method

.method private static createForEmail(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/view/textclassifier/TextClassifierImpl$LabeledIntent;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/view/textclassifier/TextClassifierImpl$LabeledIntent;

    new-instance v1, Landroid/view/textclassifier/TextClassifierImpl$LabeledIntent;

    const v2, 0x10401e1

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x10401e7

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.SENDTO"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, "mailto:%s"

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4, v8}, Landroid/view/textclassifier/TextClassifierImpl$LabeledIntent;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;I)V

    aput-object v1, v0, v8

    new-instance v1, Landroid/view/textclassifier/TextClassifierImpl$LabeledIntent;

    const v2, 0x104005f

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x1040060

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.INSERT_OR_EDIT"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, "vnd.android.cursor.item/contact"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    const-string v5, "email"

    invoke-virtual {v4, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/view/textclassifier/TextClassifierImpl$LabeledIntent;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;I)V

    aput-object v1, v0, v6

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static createForFlight(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/view/textclassifier/TextClassifierImpl$LabeledIntent;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/view/textclassifier/TextClassifierImpl$LabeledIntent;

    new-instance v1, Landroid/view/textclassifier/TextClassifierImpl$LabeledIntent;

    const v2, 0x10406b9

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x10406ba

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.WEB_SEARCH"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, "query"

    invoke-virtual {v4, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/view/textclassifier/TextClassifierImpl$LabeledIntent;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;I)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static createForPhone(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/view/textclassifier/TextClassifierImpl$LabeledIntent;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/os/UserManager;->getUserRestrictions()Landroid/os/Bundle;

    move-result-object v2

    goto :goto_0

    :cond_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    :goto_0
    const-string/jumbo v3, "no_outgoing_calls"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const/4 v5, 0x1

    if-nez v3, :cond_1

    new-instance v3, Landroid/view/textclassifier/TextClassifierImpl$LabeledIntent;

    const v6, 0x10401cc

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x10401cd

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.intent.action.DIAL"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v9, "tel:%s"

    new-array v10, v5, [Ljava/lang/Object;

    aput-object p1, v10, v4

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v8

    invoke-direct {v3, v6, v7, v8, v4}, Landroid/view/textclassifier/TextClassifierImpl$LabeledIntent;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;I)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    new-instance v3, Landroid/view/textclassifier/TextClassifierImpl$LabeledIntent;

    const v6, 0x104005f

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x1040060

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.intent.action.INSERT_OR_EDIT"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v9, "vnd.android.cursor.item/contact"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    const-string/jumbo v9, "phone"

    invoke-virtual {v8, v9, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v9

    invoke-direct {v3, v6, v7, v8, v9}, Landroid/view/textclassifier/TextClassifierImpl$LabeledIntent;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;I)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v3, "no_sms"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_2

    new-instance v3, Landroid/view/textclassifier/TextClassifierImpl$LabeledIntent;

    const v6, 0x1040625

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x104062a

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.intent.action.SENDTO"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v9, "smsto:%s"

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v4

    invoke-static {v9, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v8, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v5

    invoke-direct {v3, v6, v7, v5, v4}, Landroid/view/textclassifier/TextClassifierImpl$LabeledIntent;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;I)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object v0
.end method

.method private static createForUrl(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/view/textclassifier/TextClassifierImpl$LabeledIntent;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/view/textclassifier/TextClassifierImpl$LabeledIntent;

    new-instance v1, Landroid/view/textclassifier/TextClassifierImpl$LabeledIntent;

    const v2, 0x10400e2

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x10400e3

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v5, "com.android.browser.application_id"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/view/textclassifier/TextClassifierImpl$LabeledIntent;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;I)V

    aput-object v1, v0, v5

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
