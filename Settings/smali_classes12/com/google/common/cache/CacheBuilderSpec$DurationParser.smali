.class abstract Lcom/google/common/cache/CacheBuilderSpec$DurationParser;
.super Ljava/lang/Object;
.source "CacheBuilderSpec.java"

# interfaces
.implements Lcom/google/common/cache/CacheBuilderSpec$ValueParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/CacheBuilderSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "DurationParser"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 409
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Lcom/google/common/cache/CacheBuilderSpec;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "spec"    # Lcom/google/common/cache/CacheBuilderSpec;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .line 417
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    const-string v3, "value of key %s omitted"

    new-array v4, v1, [Ljava/lang/Object;

    aput-object p2, v4, v0

    invoke-static {v2, v3, v4}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 419
    const/4 v2, 0x2

    :try_start_0
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {p3, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 421
    .local v3, "lastChar":C
    const/16 v4, 0x64

    if-eq v3, v4, :cond_4

    const/16 v4, 0x68

    if-eq v3, v4, :cond_3

    const/16 v4, 0x6d

    if-eq v3, v4, :cond_2

    const/16 v4, 0x73

    if-ne v3, v4, :cond_1

    .line 432
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 433
    .local v4, "timeUnit":Ljava/util/concurrent/TimeUnit;
    goto :goto_1

    .line 435
    .end local v4    # "timeUnit":Ljava/util/concurrent/TimeUnit;
    :cond_1
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "key %s invalid format.  was %s, must end with one of [dDhHmMsS]"

    new-array v6, v2, [Ljava/lang/Object;

    aput-object p2, v6, v0

    aput-object p3, v6, v1

    .line 436
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 429
    :cond_2
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 430
    .restart local v4    # "timeUnit":Ljava/util/concurrent/TimeUnit;
    goto :goto_1

    .line 426
    .end local v4    # "timeUnit":Ljava/util/concurrent/TimeUnit;
    :cond_3
    sget-object v4, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    .line 427
    .restart local v4    # "timeUnit":Ljava/util/concurrent/TimeUnit;
    goto :goto_1

    .line 423
    .end local v4    # "timeUnit":Ljava/util/concurrent/TimeUnit;
    :cond_4
    sget-object v4, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    .line 424
    .restart local v4    # "timeUnit":Ljava/util/concurrent/TimeUnit;
    nop

    .line 436
    :goto_1
    nop

    .line 440
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v1

    invoke-virtual {p3, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 441
    .local v5, "duration":J
    invoke-virtual {p0, p1, v5, v6, v4}, Lcom/google/common/cache/CacheBuilderSpec$DurationParser;->parseDuration(Lcom/google/common/cache/CacheBuilderSpec;JLjava/util/concurrent/TimeUnit;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 445
    .end local v3    # "lastChar":C
    .end local v4    # "timeUnit":Ljava/util/concurrent/TimeUnit;
    .end local v5    # "duration":J
    nop

    .line 446
    return-void

    .line 442
    :catch_0
    move-exception v3

    .line 443
    .local v3, "e":Ljava/lang/NumberFormatException;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v0

    aput-object p3, v2, v1

    .line 444
    const-string v0, "key %s value set to %s, must be integer"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method protected abstract parseDuration(Lcom/google/common/cache/CacheBuilderSpec;JLjava/util/concurrent/TimeUnit;)V
.end method
