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

    .line 651
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Landroid/view/textclassifier/TextClassifierImpl$IntentFactory;->MIN_EVENT_FUTURE_MILLIS:J

    .line 652
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Landroid/view/textclassifier/TextClassifierImpl$IntentFactory;->DEFAULT_EVENT_DURATION:J

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 654
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/content/Context;Ljava/time/Instant;Landroid/view/textclassifier/TextClassifierImplNative$ClassificationResult;Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "referenceTime"    # Ljava/time/Instant;
    .param p2, "classification"    # Landroid/view/textclassifier/TextClassifierImplNative$ClassificationResult;
    .param p3, "text"    # Ljava/lang/String;
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

    .line 662
    invoke-virtual {p2}, Landroid/view/textclassifier/TextClassifierImplNative$ClassificationResult;->getCollection()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 663
    .local v0, "type":Ljava/lang/String;
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p3

    .line 664
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

    .line 685
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    return-object v1

    .line 683
    :pswitch_0
    invoke-static {p0, p3}, Landroid/view/textclassifier/TextClassifierImpl$IntentFactory;->createForFlight(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 675
    :pswitch_1
    invoke-virtual {p2}, Landroid/view/textclassifier/TextClassifierImplNative$ClassificationResult;->getDatetimeResult()Landroid/view/textclassifier/TextClassifierImplNative$DatetimeResult;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 676
    nop

    .line 677
    invoke-virtual {p2}, Landroid/view/textclassifier/TextClassifierImplNative$ClassificationResult;->getDatetimeResult()Landroid/view/textclassifier/TextClassifierImplNative$DatetimeResult;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/textclassifier/TextClassifierImplNative$DatetimeResult;->getTimeMsUtc()J

    move-result-wide v1

    .line 676
    invoke-static {v1, v2}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v1

    .line 678
    .local v1, "parsedTime":Ljava/time/Instant;
    invoke-static {p0, v0, p1, v1}, Landroid/view/textclassifier/TextClassifierImpl$IntentFactory;->createForDatetime(Landroid/content/Context;Ljava/lang/String;Ljava/time/Instant;Ljava/time/Instant;)Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 680
    .end local v1    # "parsedTime":Ljava/time/Instant;
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    return-object v1

    .line 672
    :pswitch_2
    invoke-static {p0, p3}, Landroid/view/textclassifier/TextClassifierImpl$IntentFactory;->createForUrl(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 670
    :pswitch_3
    invoke-static {p0, p3}, Landroid/view/textclassifier/TextClassifierImpl$IntentFactory;->createForAddress(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 668
    :pswitch_4
    invoke-static {p0, p3}, Landroid/view/textclassifier/TextClassifierImpl$IntentFactory;->createForPhone(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 666
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
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "parsedTime"    # Ljava/time/Instant;
    .param p2, "type"    # Ljava/lang/String;

    .line 811
    const-string v0, "date"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 812
    .local v0, "isAllDay":Z
    new-instance v1, Landroid/view/textclassifier/TextClassifierImpl$LabeledIntent;

    .line 813
    const v2, 0x104005d

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 814
    const v3, 0x104005e

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.INSERT"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v5, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    .line 816
    invoke-virtual {v4, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v4

    const-string v5, "allDay"

    .line 817
    invoke-virtual {v4, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v4

    const-string v5, "beginTime"

    .line 819
    invoke-virtual {p1}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v6

    .line 818
    invoke-virtual {v4, v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v4

    const-string v5, "endTime"

    .line 821
    invoke-virtual {p1}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v6

    sget-wide v8, Landroid/view/textclassifier/TextClassifierImpl$IntentFactory;->DEFAULT_EVENT_DURATION:J

    add-long/2addr v6, v8

    .line 820
    invoke-virtual {v4, v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v4

    .line 822
    invoke-virtual {p1}, Ljava/time/Instant;->hashCode()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/view/textclassifier/TextClassifierImpl$LabeledIntent;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;I)V

    .line 812
    return-object v1
.end method

.method private static createCalendarViewIntent(Landroid/content/Context;Ljava/time/Instant;)Landroid/view/textclassifier/TextClassifierImpl$LabeledIntent;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "parsedTime"    # Ljava/time/Instant;

    .line 798
    sget-object v0, Landroid/provider/CalendarContract;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 799
    .local v0, "builder":Landroid/net/Uri$Builder;
    const-string/jumbo v1, "time"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 800
    invoke-virtual {p1}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 801
    new-instance v1, Landroid/view/textclassifier/TextClassifierImpl$LabeledIntent;

    .line 802
    const v2, 0x10406b7

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 803
    const v3, 0x10406b8

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 804
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/view/textclassifier/TextClassifierImpl$LabeledIntent;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;I)V

    .line 801
    return-object v1
.end method

.method private static createForAddress(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "text"    # Ljava/lang/String;
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

    .line 741
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 743
    .local v0, "actions":Ljava/util/List;, "Ljava/util/List<Landroid/view/textclassifier/TextClassifierImpl$LabeledIntent;>;"
    :try_start_0
    const-string v1, "UTF-8"

    invoke-static {p1, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 744
    .local v1, "encText":Ljava/lang/String;
    new-instance v2, Landroid/view/textclassifier/TextClassifierImpl$LabeledIntent;

    const v3, 0x1040365

    .line 745
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x1040366

    .line 746
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

    .line 748
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5, v8}, Landroid/view/textclassifier/TextClassifierImpl$LabeledIntent;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;I)V

    .line 744
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 752
    .end local v1    # "encText":Ljava/lang/String;
    goto :goto_0

    .line 750
    :catch_0
    move-exception v1

    .line 751
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    const-string v2, "androidtc"

    const-string v3, "Could not encode address"

    invoke-static {v2, v3, v1}, Landroid/view/textclassifier/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 753
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    :goto_0
    return-object v0
.end method

.method private static createForDatetime(Landroid/content/Context;Ljava/lang/String;Ljava/time/Instant;Ljava/time/Instant;)Ljava/util/List;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "referenceTime"    # Ljava/time/Instant;
    .param p3, "parsedTime"    # Ljava/time/Instant;
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

    .line 773
    if-nez p2, :cond_0

    .line 775
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object p2

    .line 777
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 778
    .local v0, "actions":Ljava/util/List;, "Ljava/util/List<Landroid/view/textclassifier/TextClassifierImpl$LabeledIntent;>;"
    invoke-static {p0, p3}, Landroid/view/textclassifier/TextClassifierImpl$IntentFactory;->createCalendarViewIntent(Landroid/content/Context;Ljava/time/Instant;)Landroid/view/textclassifier/TextClassifierImpl$LabeledIntent;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 779
    sget-object v1, Ljava/time/temporal/ChronoUnit;->MILLIS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {p2, p3, v1}, Ljava/time/Instant;->until(Ljava/time/temporal/Temporal;Ljava/time/temporal/TemporalUnit;)J

    move-result-wide v1

    .line 780
    .local v1, "millisUntilEvent":J
    sget-wide v3, Landroid/view/textclassifier/TextClassifierImpl$IntentFactory;->MIN_EVENT_FUTURE_MILLIS:J

    cmp-long v3, v1, v3

    if-lez v3, :cond_1

    .line 781
    invoke-static {p0, p3, p1}, Landroid/view/textclassifier/TextClassifierImpl$IntentFactory;->createCalendarCreateEventIntent(Landroid/content/Context;Ljava/time/Instant;Ljava/lang/String;)Landroid/view/textclassifier/TextClassifierImpl$LabeledIntent;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 783
    :cond_1
    return-object v0
.end method

.method private static createForEmail(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "text"    # Ljava/lang/String;
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

    .line 691
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/view/textclassifier/TextClassifierImpl$LabeledIntent;

    new-instance v1, Landroid/view/textclassifier/TextClassifierImpl$LabeledIntent;

    .line 693
    const v2, 0x10401e1

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 694
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

    .line 696
    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4, v8}, Landroid/view/textclassifier/TextClassifierImpl$LabeledIntent;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;I)V

    aput-object v1, v0, v8

    new-instance v1, Landroid/view/textclassifier/TextClassifierImpl$LabeledIntent;

    .line 699
    const v2, 0x104005f

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 700
    const v3, 0x1040060

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.INSERT_OR_EDIT"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, "vnd.android.cursor.item/contact"

    .line 702
    invoke-virtual {v4, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    const-string v5, "email"

    .line 703
    invoke-virtual {v4, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    .line 704
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/view/textclassifier/TextClassifierImpl$LabeledIntent;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;I)V

    aput-object v1, v0, v6

    .line 691
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static createForFlight(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "text"    # Ljava/lang/String;
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

    .line 788
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/view/textclassifier/TextClassifierImpl$LabeledIntent;

    new-instance v1, Landroid/view/textclassifier/TextClassifierImpl$LabeledIntent;

    .line 789
    const v2, 0x10406b9

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 790
    const v3, 0x10406ba

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.WEB_SEARCH"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, "query"

    .line 792
    invoke-virtual {v4, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    .line 793
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/view/textclassifier/TextClassifierImpl$LabeledIntent;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;I)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 788
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static createForPhone(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "text"    # Ljava/lang/String;
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

    .line 709
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 710
    .local v0, "actions":Ljava/util/List;, "Ljava/util/List<Landroid/view/textclassifier/TextClassifierImpl$LabeledIntent;>;"
    const-class v1, Landroid/os/UserManager;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    .line 711
    .local v1, "userManager":Landroid/os/UserManager;
    if-eqz v1, :cond_0

    .line 712
    invoke-virtual {v1}, Landroid/os/UserManager;->getUserRestrictions()Landroid/os/Bundle;

    move-result-object v2

    goto :goto_0

    :cond_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 713
    .local v2, "userRestrictions":Landroid/os/Bundle;
    :goto_0
    const-string/jumbo v3, "no_outgoing_calls"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const/4 v5, 0x1

    if-nez v3, :cond_1

    .line 714
    new-instance v3, Landroid/view/textclassifier/TextClassifierImpl$LabeledIntent;

    const v6, 0x10401cc

    .line 715
    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x10401cd

    .line 716
    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.intent.action.DIAL"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v9, "tel:%s"

    new-array v10, v5, [Ljava/lang/Object;

    aput-object p1, v10, v4

    .line 718
    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 717
    invoke-virtual {v8, v9}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v8

    invoke-direct {v3, v6, v7, v8, v4}, Landroid/view/textclassifier/TextClassifierImpl$LabeledIntent;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;I)V

    .line 714
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 721
    :cond_1
    new-instance v3, Landroid/view/textclassifier/TextClassifierImpl$LabeledIntent;

    const v6, 0x104005f

    .line 722
    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x1040060

    .line 723
    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.intent.action.INSERT_OR_EDIT"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v9, "vnd.android.cursor.item/contact"

    .line 725
    invoke-virtual {v8, v9}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    const-string/jumbo v9, "phone"

    .line 726
    invoke-virtual {v8, v9, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    .line 727
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v9

    invoke-direct {v3, v6, v7, v8, v9}, Landroid/view/textclassifier/TextClassifierImpl$LabeledIntent;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;I)V

    .line 721
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 728
    const-string/jumbo v3, "no_sms"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_2

    .line 729
    new-instance v3, Landroid/view/textclassifier/TextClassifierImpl$LabeledIntent;

    const v6, 0x1040625

    .line 730
    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x104062a

    .line 731
    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.intent.action.SENDTO"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v9, "smsto:%s"

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v4

    .line 733
    invoke-static {v9, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v8, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v5

    invoke-direct {v3, v6, v7, v5, v4}, Landroid/view/textclassifier/TextClassifierImpl$LabeledIntent;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;I)V

    .line 729
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 736
    :cond_2
    return-object v0
.end method

.method private static createForUrl(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "text"    # Ljava/lang/String;
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

    .line 758
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 759
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 761
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/view/textclassifier/TextClassifierImpl$LabeledIntent;

    new-instance v1, Landroid/view/textclassifier/TextClassifierImpl$LabeledIntent;

    const v2, 0x10400e2

    .line 762
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x10400e3

    .line 763
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    .line 764
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v5, "com.android.browser.application_id"

    .line 765
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/view/textclassifier/TextClassifierImpl$LabeledIntent;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;I)V

    aput-object v1, v0, v5

    .line 761
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
