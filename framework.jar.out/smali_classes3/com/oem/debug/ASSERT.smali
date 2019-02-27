.class public Lcom/oem/debug/ASSERT;
.super Ljava/lang/Object;
.source "ASSERT.java"


# static fields
.field private static final ASSERT_CACHE_PATH:Ljava/lang/String; = "/cache/assertlog"

.field private static final ASSERT_PANIC_PROP:Ljava/lang/String; = "persist.sys.assert.panic"

.field private static final ASSERT_STATE:Ljava/lang/String; = "persist.sys.assert.enable"

.field private static final FILTEDPROC_PROP:Ljava/lang/String; = "persist.assert.filtedproc"

.field private static final IS_EMPTY:I = 0x1

.field private static final IS_GZIPPED:I = 0x4

.field private static final IS_TEXT:I = 0x2

.field private static final MAX_CONTEXT_LENGTH:I = 0x14

.field private static final TAG:Ljava/lang/String; = "java.lang.ASSERT"

.field private static mFunctionProxy:Lcom/oem/debug/OemAssertTip;

.field private static final rt:Ljava/lang/Runtime;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    sput-object v0, Lcom/oem/debug/ASSERT;->rt:Ljava/lang/Runtime;

    .line 61
    const/4 v0, 0x0

    sput-object v0, Lcom/oem/debug/ASSERT;->mFunctionProxy:Lcom/oem/debug/OemAssertTip;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    return-void
.end method

.method public static ASSERT(Ljava/lang/String;Z)V
    .locals 0
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "condition"    # Z

    .line 74
    invoke-static {p0, p1}, Lcom/oem/debug/ASSERT;->assertTrue(Ljava/lang/String;Z)V

    .line 75
    return-void
.end method

.method public static ASSERT(Z)V
    .locals 0
    .param p0, "condition"    # Z

    .line 70
    invoke-static {p0}, Lcom/oem/debug/ASSERT;->assertTrue(Z)V

    .line 71
    return-void
.end method

.method public static ASSERTEXCEPTION(Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "t"    # Ljava/lang/Throwable;

    .line 78
    invoke-static {p0}, Lcom/oem/debug/ASSERT;->fail(Ljava/lang/Throwable;)V

    .line 79
    return-void
.end method

.method private static assertEquals(BB)V
    .locals 1
    .param p0, "expected"    # B
    .param p1, "actual"    # B

    .line 310
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/oem/debug/ASSERT;->assertEquals(Ljava/lang/String;BB)V

    .line 311
    return-void
.end method

.method private static assertEquals(CC)V
    .locals 1
    .param p0, "expected"    # C
    .param p1, "actual"    # C

    .line 325
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/oem/debug/ASSERT;->assertEquals(Ljava/lang/String;CC)V

    .line 326
    return-void
.end method

.method private static assertEquals(DDD)V
    .locals 7
    .param p0, "expected"    # D
    .param p2, "actual"    # D
    .param p4, "delta"    # D

    .line 237
    const/4 v0, 0x0

    move-wide v1, p0

    move-wide v3, p2

    move-wide v5, p4

    invoke-static/range {v0 .. v6}, Lcom/oem/debug/ASSERT;->assertEquals(Ljava/lang/String;DDD)V

    .line 238
    return-void
.end method

.method private static assertEquals(FFF)V
    .locals 1
    .param p0, "expected"    # F
    .param p1, "actual"    # F
    .param p2, "delta"    # F

    .line 264
    const/4 v0, 0x0

    invoke-static {v0, p0, p1, p2}, Lcom/oem/debug/ASSERT;->assertEquals(Ljava/lang/String;FFF)V

    .line 265
    return-void
.end method

.method private static assertEquals(II)V
    .locals 1
    .param p0, "expected"    # I
    .param p1, "actual"    # I

    .line 356
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/oem/debug/ASSERT;->assertEquals(Ljava/lang/String;II)V

    .line 357
    return-void
.end method

.method private static assertEquals(JJ)V
    .locals 1
    .param p0, "expected"    # J
    .param p2, "actual"    # J

    .line 279
    const/4 v0, 0x0

    invoke-static {v0, p0, p1, p2, p3}, Lcom/oem/debug/ASSERT;->assertEquals(Ljava/lang/String;JJ)V

    .line 280
    return-void
.end method

.method private static assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p0, "expected"    # Ljava/lang/Object;
    .param p1, "actual"    # Ljava/lang/Object;

    .line 186
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/oem/debug/ASSERT;->assertEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 187
    return-void
.end method

.method private static assertEquals(Ljava/lang/String;BB)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "expected"    # B
    .param p2, "actual"    # B

    .line 303
    new-instance v0, Ljava/lang/Byte;

    invoke-direct {v0, p1}, Ljava/lang/Byte;-><init>(B)V

    new-instance v1, Ljava/lang/Byte;

    invoke-direct {v1, p2}, Ljava/lang/Byte;-><init>(B)V

    invoke-static {p0, v0, v1}, Lcom/oem/debug/ASSERT;->assertEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 304
    return-void
.end method

.method private static assertEquals(Ljava/lang/String;CC)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "expected"    # C
    .param p2, "actual"    # C

    .line 318
    new-instance v0, Ljava/lang/Character;

    invoke-direct {v0, p1}, Ljava/lang/Character;-><init>(C)V

    new-instance v1, Ljava/lang/Character;

    invoke-direct {v1, p2}, Ljava/lang/Character;-><init>(C)V

    invoke-static {p0, v0, v1}, Lcom/oem/debug/ASSERT;->assertEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 319
    return-void
.end method

.method private static assertEquals(Ljava/lang/String;DDD)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "expected"    # D
    .param p3, "actual"    # D
    .param p5, "delta"    # D

    .line 222
    invoke-static {}, Lcom/oem/debug/ASSERT;->getAssertEnable()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1, p2, p3, p4}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 226
    :cond_0
    sub-double v0, p1, p3

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    cmpg-double v0, v0, p5

    if-lez v0, :cond_1

    .line 227
    new-instance v0, Ljava/lang/Double;

    invoke-direct {v0, p1, p2}, Ljava/lang/Double;-><init>(D)V

    new-instance v1, Ljava/lang/Double;

    invoke-direct {v1, p3, p4}, Ljava/lang/Double;-><init>(D)V

    invoke-static {p0, v0, v1}, Lcom/oem/debug/ASSERT;->failNotEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 229
    :cond_1
    return-void

    .line 223
    :cond_2
    :goto_0
    return-void
.end method

.method private static assertEquals(Ljava/lang/String;FFF)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "expected"    # F
    .param p2, "actual"    # F
    .param p3, "delta"    # F

    .line 249
    invoke-static {}, Lcom/oem/debug/ASSERT;->getAssertEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 250
    cmpl-float v0, p1, p2

    if-eqz v0, :cond_1

    .line 251
    new-instance v0, Ljava/lang/Float;

    invoke-direct {v0, p1}, Ljava/lang/Float;-><init>(F)V

    new-instance v1, Ljava/lang/Float;

    invoke-direct {v1, p2}, Ljava/lang/Float;-><init>(F)V

    invoke-static {p0, v0, v1}, Lcom/oem/debug/ASSERT;->failNotEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 253
    :cond_0
    invoke-static {}, Lcom/oem/debug/ASSERT;->getAssertEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    sub-float v0, p1, p2

    .line 254
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, p3

    if-lez v0, :cond_1

    .line 255
    new-instance v0, Ljava/lang/Float;

    invoke-direct {v0, p1}, Ljava/lang/Float;-><init>(F)V

    new-instance v1, Ljava/lang/Float;

    invoke-direct {v1, p2}, Ljava/lang/Float;-><init>(F)V

    invoke-static {p0, v0, v1}, Lcom/oem/debug/ASSERT;->failNotEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 257
    :cond_1
    :goto_0
    return-void
.end method

.method private static assertEquals(Ljava/lang/String;II)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "expected"    # I
    .param p2, "actual"    # I

    .line 349
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {p0, v0, v1}, Lcom/oem/debug/ASSERT;->assertEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 350
    return-void
.end method

.method private static assertEquals(Ljava/lang/String;JJ)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "expected"    # J
    .param p3, "actual"    # J

    .line 272
    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p1, p2}, Ljava/lang/Long;-><init>(J)V

    new-instance v1, Ljava/lang/Long;

    invoke-direct {v1, p3, p4}, Ljava/lang/Long;-><init>(J)V

    invoke-static {p0, v0, v1}, Lcom/oem/debug/ASSERT;->assertEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 273
    return-void
.end method

.method private static assertEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "expected"    # Ljava/lang/Object;
    .param p2, "actual"    # Ljava/lang/Object;

    .line 170
    invoke-static {}, Lcom/oem/debug/ASSERT;->getAssertEnable()Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    goto :goto_0

    .line 174
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 175
    return-void

    .line 178
    :cond_1
    invoke-static {p0, p1, p2}, Lcom/oem/debug/ASSERT;->failNotEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 179
    return-void

    .line 171
    :cond_2
    :goto_0
    return-void
.end method

.method private static assertEquals(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "expected"    # Ljava/lang/String;
    .param p1, "actual"    # Ljava/lang/String;

    .line 212
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/oem/debug/ASSERT;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    return-void
.end method

.method private static assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "expected"    # Ljava/lang/String;
    .param p2, "actual"    # Ljava/lang/String;

    .line 194
    invoke-static {}, Lcom/oem/debug/ASSERT;->getAssertEnable()Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    goto :goto_0

    .line 198
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 199
    return-void

    .line 204
    :cond_1
    new-instance v0, Lcom/oem/debug/ASSERTComparisonCompactor;

    const/16 v1, 0x14

    invoke-direct {v0, v1, p1, p2}, Lcom/oem/debug/ASSERTComparisonCompactor;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/oem/debug/ASSERTComparisonCompactor;->compact(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oem/debug/ASSERT;->fail(Ljava/lang/String;)V

    .line 206
    return-void

    .line 195
    :cond_2
    :goto_0
    return-void
.end method

.method private static assertEquals(Ljava/lang/String;SS)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "expected"    # S
    .param p2, "actual"    # S

    .line 334
    new-instance v0, Ljava/lang/Short;

    invoke-direct {v0, p1}, Ljava/lang/Short;-><init>(S)V

    new-instance v1, Ljava/lang/Short;

    invoke-direct {v1, p2}, Ljava/lang/Short;-><init>(S)V

    invoke-static {p0, v0, v1}, Lcom/oem/debug/ASSERT;->assertEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 335
    return-void
.end method

.method private static assertEquals(Ljava/lang/String;ZZ)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "expected"    # Z
    .param p2, "actual"    # Z

    .line 288
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/oem/debug/ASSERT;->assertEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 289
    return-void
.end method

.method private static assertEquals(SS)V
    .locals 1
    .param p0, "expected"    # S
    .param p1, "actual"    # S

    .line 341
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/oem/debug/ASSERT;->assertEquals(Ljava/lang/String;SS)V

    .line 342
    return-void
.end method

.method private static assertEquals(ZZ)V
    .locals 1
    .param p0, "expected"    # Z
    .param p1, "actual"    # Z

    .line 295
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/oem/debug/ASSERT;->assertEquals(Ljava/lang/String;ZZ)V

    .line 296
    return-void
.end method

.method private static assertFalse(Ljava/lang/String;Z)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "condition"    # Z

    .line 153
    xor-int/lit8 v0, p1, 0x1

    invoke-static {p0, v0}, Lcom/oem/debug/ASSERT;->assertTrue(Ljava/lang/String;Z)V

    .line 154
    return-void
.end method

.method private static assertFalse(Z)V
    .locals 1
    .param p0, "condition"    # Z

    .line 161
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/oem/debug/ASSERT;->assertFalse(Ljava/lang/String;Z)V

    .line 162
    return-void
.end method

.method private static assertNotNull(Ljava/lang/Object;)V
    .locals 1
    .param p0, "object"    # Ljava/lang/Object;

    .line 363
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/oem/debug/ASSERT;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 364
    return-void
.end method

.method private static assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "object"    # Ljava/lang/Object;

    .line 371
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p0, v0}, Lcom/oem/debug/ASSERT;->assertTrue(Ljava/lang/String;Z)V

    .line 372
    return-void
.end method

.method private static assertNotSame(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p0, "expected"    # Ljava/lang/Object;
    .param p1, "actual"    # Ljava/lang/Object;

    .line 427
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/oem/debug/ASSERT;->assertNotSame(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 428
    return-void
.end method

.method private static assertNotSame(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "expected"    # Ljava/lang/Object;
    .param p2, "actual"    # Ljava/lang/Object;

    .line 417
    invoke-static {}, Lcom/oem/debug/ASSERT;->getAssertEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    if-ne p1, p2, :cond_0

    .line 418
    invoke-static {p0}, Lcom/oem/debug/ASSERT;->failSame(Ljava/lang/String;)V

    .line 420
    :cond_0
    return-void
.end method

.method private static assertNull(Ljava/lang/Object;)V
    .locals 1
    .param p0, "object"    # Ljava/lang/Object;

    .line 378
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/oem/debug/ASSERT;->assertNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 379
    return-void
.end method

.method private static assertNull(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "object"    # Ljava/lang/Object;

    .line 386
    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p0, v0}, Lcom/oem/debug/ASSERT;->assertTrue(Ljava/lang/String;Z)V

    .line 387
    return-void
.end method

.method private static assertSame(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p0, "expected"    # Ljava/lang/Object;
    .param p1, "actual"    # Ljava/lang/Object;

    .line 407
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/oem/debug/ASSERT;->assertSame(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 408
    return-void
.end method

.method private static assertSame(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "expected"    # Ljava/lang/Object;
    .param p2, "actual"    # Ljava/lang/Object;

    .line 395
    invoke-static {}, Lcom/oem/debug/ASSERT;->getAssertEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    if-ne p1, p2, :cond_0

    goto :goto_0

    .line 399
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/oem/debug/ASSERT;->failNotSame(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 400
    return-void

    .line 396
    :cond_1
    :goto_0
    return-void
.end method

.method private static assertTrue(Ljava/lang/String;Z)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "condition"    # Z

    .line 135
    invoke-static {}, Lcom/oem/debug/ASSERT;->getAssertEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 136
    invoke-static {p0}, Lcom/oem/debug/ASSERT;->fail(Ljava/lang/String;)V

    .line 138
    :cond_0
    return-void
.end method

.method private static assertTrue(Z)V
    .locals 1
    .param p0, "condition"    # Z

    .line 145
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/oem/debug/ASSERT;->assertTrue(Ljava/lang/String;Z)V

    .line 146
    return-void
.end method

.method private static copy2File(Ljava/io/BufferedReader;Ljava/io/File;)Z
    .locals 4
    .param p0, "br"    # Ljava/io/BufferedReader;
    .param p1, "destFile"    # Ljava/io/File;

    .line 619
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 620
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 623
    :cond_0
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/FileWriter;

    invoke-direct {v2, p1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 626
    .local v1, "bw":Ljava/io/BufferedWriter;
    const/4 v2, 0x0

    .line 628
    .local v2, "line":Ljava/lang/String;
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    if-eqz v3, :cond_1

    .line 629
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v2, v0, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;II)V

    .line 630
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->newLine()V

    .line 631
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 634
    .end local v2    # "line":Ljava/lang/String;
    :cond_1
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    .line 635
    nop

    .line 637
    const/4 v0, 0x1

    return v0

    .line 634
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    throw v2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 638
    .end local v1    # "bw":Ljava/io/BufferedWriter;
    :catch_0
    move-exception v1

    .line 639
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 641
    return v0
.end method

.method private static copy2File(Ljava/io/InputStream;Ljava/io/File;)Z
    .locals 5
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .param p1, "destFile"    # Ljava/io/File;

    .line 591
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 592
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 595
    :cond_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 598
    .local v1, "out":Ljava/io/OutputStream;
    const/16 v2, 0x1000

    :try_start_1
    new-array v2, v2, [B

    .line 601
    .local v2, "buffer":[B
    :goto_0
    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    move v4, v3

    .local v4, "bytesRead":I
    if-ltz v3, :cond_1

    .line 602
    invoke-virtual {v1, v2, v0, v4}, Ljava/io/OutputStream;->write([BII)V

    .line 603
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 606
    .end local v2    # "buffer":[B
    .end local v4    # "bytesRead":I
    :cond_1
    :try_start_2
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 607
    nop

    .line 609
    const/4 v0, 0x1

    return v0

    .line 606
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    throw v2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 610
    .end local v1    # "out":Ljava/io/OutputStream;
    :catch_0
    move-exception v1

    .line 611
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 613
    return v0
.end method

.method private static copyFile(Ljava/io/File;Ljava/io/File;)Z
    .locals 3
    .param p0, "srcFile"    # Ljava/io/File;
    .param p1, "destFile"    # Ljava/io/File;

    .line 567
    const/4 v0, 0x0

    .line 570
    .local v0, "result":Z
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 573
    .local v1, "in":Ljava/io/InputStream;
    :try_start_1
    invoke-static {v1, p1}, Lcom/oem/debug/ASSERT;->copy2File(Ljava/io/InputStream;Ljava/io/File;)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v2

    .line 575
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 576
    nop

    .line 580
    .end local v1    # "in":Ljava/io/InputStream;
    goto :goto_0

    .line 575
    .restart local v1    # "in":Ljava/io/InputStream;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw v2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 577
    .end local v1    # "in":Ljava/io/InputStream;
    :catch_0
    move-exception v1

    .line 578
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 579
    const/4 v0, 0x0

    .line 582
    .end local v1    # "e":Ljava/io/IOException;
    :goto_0
    return v0
.end method

.method private static disableInterrupt()V
    .locals 2

    .line 490
    :try_start_0
    sget-object v0, Lcom/oem/debug/ASSERT;->rt:Ljava/lang/Runtime;

    const-string v1, "/system/bin/sh /system/bin/disableinterrupt.sh"

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 493
    goto :goto_0

    .line 491
    :catch_0
    move-exception v0

    .line 492
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 494
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method

.method private static displayErrorInfo(Ljava/lang/String;)V
    .locals 2
    .param p0, "info"    # Ljava/lang/String;

    .line 714
    const-string v0, "persist.sys.assert.panic"

    const-string v1, "true"

    invoke-static {v0, v1}, Lcom/oem/debug/ASSERT;->getSystemProperties_native(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 715
    const-string v0, "ro.runtime.assert"

    const-string v1, "false"

    invoke-static {v0, v1}, Lcom/oem/debug/ASSERT;->getSystemProperties_native(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    .line 716
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 717
    return-void

    .line 719
    :cond_0
    const-string v0, "ro.runtime.assert"

    const-string v1, "true"

    invoke-static {v0, v1}, Lcom/oem/debug/ASSERT;->setSystemProperties_native(Ljava/lang/String;Ljava/lang/String;)V

    .line 722
    invoke-static {p0}, Lcom/oem/debug/ASSERT;->displayErrorInfo_native(Ljava/lang/String;)V

    .line 724
    :cond_1
    return-void
.end method

.method private static native displayErrorInfo_native(Ljava/lang/String;)V
.end method

.method public static epitaph(Ljava/io/File;Ljava/lang/String;I)Z
    .locals 15
    .param p0, "temp"    # Ljava/io/File;
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "flags"    # I

    move-object v1, p0

    .line 728
    const/4 v2, 0x0

    .line 729
    .local v2, "is":Ljava/io/InputStream;
    const/4 v3, 0x0

    .line 730
    .local v3, "br":Ljava/io/BufferedReader;
    const/4 v4, 0x0

    .line 731
    .local v4, "bw":Ljava/io/BufferedWriter;
    const/4 v5, 0x0

    .line 733
    .local v5, "process":Ljava/lang/String;
    invoke-static {}, Lcom/oem/debug/OemAssertTip;->getInstance()Lcom/oem/debug/OemAssertTip;

    move-result-object v0

    sput-object v0, Lcom/oem/debug/ASSERT;->mFunctionProxy:Lcom/oem/debug/OemAssertTip;

    .line 734
    const/4 v6, -0x1

    .line 736
    .local v6, "result":I
    const/4 v7, 0x0

    if-nez v1, :cond_0

    .line 737
    return v7

    .line 741
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v2, v0

    .line 743
    and-int/lit8 v0, p2, 0x4

    if-eqz v0, :cond_1

    .line 744
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v0, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 747
    .end local v2    # "is":Ljava/io/InputStream;
    .local v0, "is":Ljava/io/InputStream;
    move-object v2, v0

    .end local v0    # "is":Ljava/io/InputStream;
    .restart local v2    # "is":Ljava/io/InputStream;
    :cond_1
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    invoke-direct {v8, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v3, v0

    .line 750
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v8, 0x400

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v9, v0

    .line 751
    .local v9, "sb":Ljava/lang/StringBuilder;
    move v0, v7

    .local v0, "count":I
    :goto_0
    move v10, v0

    .line 754
    .end local v0    # "count":I
    .local v10, "count":I
    const/4 v0, 0x1

    if-ge v10, v8, :cond_4

    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v11

    move-object v12, v11

    .local v12, "line":Ljava/lang/String;
    if-eqz v11, :cond_4

    .line 755
    const-string v11, "-----"

    invoke-virtual {v12, v11, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 756
    goto :goto_1

    .line 759
    :cond_2
    const-string v11, "Process: "

    invoke-virtual {v12, v11, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 760
    const-string v11, ":"

    invoke-virtual {v12, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    add-int/2addr v11, v0

    invoke-virtual {v12, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 763
    .end local v5    # "process":Ljava/lang/String;
    .local v0, "process":Ljava/lang/String;
    move-object v5, v0

    .end local v0    # "process":Ljava/lang/String;
    .restart local v5    # "process":Ljava/lang/String;
    :cond_3
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 764
    const-string v0, "\r\n"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 765
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/2addr v0, v10

    .end local v10    # "count":I
    .local v0, "count":I
    goto :goto_0

    .line 768
    .end local v0    # "count":I
    .end local v12    # "line":Ljava/lang/String;
    .restart local v10    # "count":I
    :catchall_0
    move-exception v0

    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    throw v0

    :cond_4
    :goto_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 769
    nop

    .line 771
    invoke-static {v5}, Lcom/oem/debug/ASSERT;->isFiltedProcess(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 772
    return v7

    .line 775
    :cond_5
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v5}, Lcom/oem/debug/ASSERT;->getPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ".txt"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 776
    .local v8, "fn":Ljava/lang/String;
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 777
    .local v11, "dest":Ljava/io/File;
    new-instance v12, Ljava/io/FileInputStream;

    invoke-direct {v12, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v2, v12

    .line 779
    and-int/lit8 v12, p2, 0x4

    if-eqz v12, :cond_6

    .line 780
    new-instance v12, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v12, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v2, v12

    .line 783
    :cond_6
    invoke-static {v2, v11}, Lcom/oem/debug/ASSERT;->copy2File(Ljava/io/InputStream;Ljava/io/File;)Z

    .line 784
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 786
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Please check "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " file for more information ..."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 788
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 789
    .local v12, "content":Ljava/lang/String;
    const-string v13, "persist.sys.assert.enable"

    const-string v14, "true"

    invoke-static {v13, v14}, Lcom/oem/debug/ASSERT;->getSystemProperties_native(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "false"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 790
    const-string v13, "assert state is close"

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 792
    :cond_7
    sget-object v13, Lcom/oem/debug/ASSERT;->mFunctionProxy:Lcom/oem/debug/OemAssertTip;

    invoke-virtual {v13, v12}, Lcom/oem/debug/OemAssertTip;->requestShowAssertMessage(Ljava/lang/String;)I

    move-result v13
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move v6, v13

    .line 804
    .end local v8    # "fn":Ljava/lang/String;
    .end local v9    # "sb":Ljava/lang/StringBuilder;
    .end local v10    # "count":I
    .end local v11    # "dest":Ljava/io/File;
    .end local v12    # "content":Ljava/lang/String;
    :goto_2
    nop

    .line 806
    return v0

    .line 800
    :catch_0
    move-exception v0

    .line 801
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 803
    return v7
.end method

.method private static execCommand(Ljava/lang/String;)V
    .locals 4
    .param p0, "command"    # Ljava/lang/String;

    .line 529
    if-nez p0, :cond_0

    .line 530
    return-void

    .line 534
    :cond_0
    :try_start_0
    sget-object v0, Lcom/oem/debug/ASSERT;->rt:Ljava/lang/Runtime;

    invoke-virtual {v0, p0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    .line 535
    .local v0, "process":Ljava/lang/Process;
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    .line 536
    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 550
    .local v1, "br":Ljava/io/BufferedReader;
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 551
    goto :goto_0

    .line 553
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 555
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 556
    goto :goto_1

    .line 555
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    throw v2
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 559
    .end local v0    # "process":Ljava/lang/Process;
    .end local v1    # "br":Ljava/io/BufferedReader;
    :catch_0
    move-exception v0

    .line 560
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_2

    .line 557
    :catch_1
    move-exception v0

    .line 558
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 561
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_1
    nop

    .line 562
    :goto_2
    return-void
.end method

.method public static fail()V
    .locals 1

    .line 126
    const/4 v0, 0x0

    .line 127
    .local v0, "msg":Ljava/lang/String;
    invoke-static {v0}, Lcom/oem/debug/ASSERT;->fail(Ljava/lang/String;)V

    .line 128
    return-void
.end method

.method public static fail(Ljava/lang/String;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;

    .line 118
    new-instance v0, Ljava/lang/Error;

    invoke-direct {v0, p0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    .line 119
    .local v0, "e":Ljava/lang/Error;
    invoke-static {v0}, Lcom/oem/debug/ASSERT;->fail(Ljava/lang/Throwable;)V

    .line 120
    return-void
.end method

.method public static fail(Ljava/lang/Throwable;)V
    .locals 9
    .param p0, "t"    # Ljava/lang/Throwable;

    .line 82
    invoke-static {}, Lcom/oem/debug/ASSERT;->getAssertEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/oem/debug/ASSERT;->isFiltedProcess(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 83
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 84
    .local v0, "sw":Ljava/io/StringWriter;
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 85
    .local v1, "pw":Ljava/io/PrintWriter;
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 87
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    .line 89
    .local v2, "stacktrace":Ljava/lang/String;
    invoke-static {}, Lcom/oem/debug/ASSERT;->getProcessName_native()Ljava/lang/String;

    move-result-object v3

    .line 91
    .local v3, "processname":Ljava/lang/String;
    if-nez v3, :cond_0

    .line 92
    const-string v3, "NONE"

    .line 95
    :cond_0
    invoke-static {}, Lcom/oem/debug/ASSERT;->disableInterrupt()V

    .line 97
    invoke-static {v3, v2}, Lcom/oem/debug/ASSERT;->getDisplayInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 98
    .local v4, "displayinfo":Ljava/lang/String;
    invoke-static {v3}, Lcom/oem/debug/ASSERT;->getPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 99
    .local v5, "fn":Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 100
    .local v6, "logfile":Ljava/io/File;
    invoke-static {v6, v4}, Lcom/oem/debug/ASSERT;->saveErrorLog(Ljava/io/File;Ljava/lang/String;)V

    .line 102
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\r\nPlease check"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ".txt for more information ..."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/oem/debug/ASSERT;->displayErrorInfo(Ljava/lang/String;)V

    .line 111
    .end local v0    # "sw":Ljava/io/StringWriter;
    .end local v1    # "pw":Ljava/io/PrintWriter;
    .end local v2    # "stacktrace":Ljava/lang/String;
    .end local v3    # "processname":Ljava/lang/String;
    .end local v4    # "displayinfo":Ljava/lang/String;
    .end local v5    # "fn":Ljava/lang/String;
    .end local v6    # "logfile":Ljava/io/File;
    :cond_1
    return-void
.end method

.method private static failNotEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "expected"    # Ljava/lang/Object;
    .param p2, "actual"    # Ljava/lang/Object;

    .line 454
    invoke-static {p0, p1, p2}, Lcom/oem/debug/ASSERT;->format(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oem/debug/ASSERT;->fail(Ljava/lang/String;)V

    .line 455
    return-void
.end method

.method private static failNotSame(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "expected"    # Ljava/lang/Object;
    .param p2, "actual"    # Ljava/lang/Object;

    .line 442
    const-string v0, ""

    .line 444
    .local v0, "formatted":Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 445
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 448
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "expected same:<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "> was not:<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/oem/debug/ASSERT;->fail(Ljava/lang/String;)V

    .line 450
    return-void
.end method

.method private static failSame(Ljava/lang/String;)V
    .locals 3
    .param p0, "message"    # Ljava/lang/String;

    .line 431
    const-string v0, ""

    .line 433
    .local v0, "formatted":Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 434
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 437
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "expected not same"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/oem/debug/ASSERT;->fail(Ljava/lang/String;)V

    .line 438
    return-void
.end method

.method static format(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "expected"    # Ljava/lang/Object;
    .param p2, "actual"    # Ljava/lang/Object;

    .line 458
    const-string v0, ""

    .line 460
    .local v0, "formatted":Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 461
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 464
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "expected:<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "> but was:<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ">\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getAssertEnable()Z
    .locals 2

    .line 482
    const-string v0, "persist.sys.assert.enable"

    const-string v1, "false"

    invoke-static {v0, v1}, Lcom/oem/debug/ASSERT;->getSystemProperties_native(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    .line 483
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 482
    return v0
.end method

.method private static getDisplayInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "process"    # Ljava/lang/String;
    .param p1, "info"    # Ljava/lang/String;

    .line 673
    const-string v0, "java.lang.ASSERT."

    .line 674
    .local v0, "assertPre":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x400

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 675
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 677
    .local v2, "substr":Ljava/lang/String;
    const/4 v3, 0x0

    .line 678
    .local v3, "istart":I
    move-object v4, p1

    .line 679
    .local v4, "st":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    .line 681
    .local v5, "count":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "JAVA ASSERT ERROR!!!\r\nProcess: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\r\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 683
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v5, :cond_3

    .line 684
    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 686
    .local v7, "ch":C
    const/16 v8, 0xa

    if-ne v7, v8, :cond_1

    .line 687
    invoke-virtual {v4, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 689
    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_0

    .line 690
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 691
    const-string v8, "\r\n"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 694
    :cond_0
    add-int/lit8 v3, v6, 0x1

    .line 695
    const/4 v2, 0x0

    goto :goto_1

    .line 697
    :cond_1
    add-int/lit8 v8, v5, -0x1

    if-ne v6, v8, :cond_2

    .line 698
    invoke-virtual {v4, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 699
    const-string v8, "\r\n"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 683
    :cond_2
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 704
    .end local v6    # "i":I
    .end local v7    # "ch":C
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method private static getPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "processName"    # Ljava/lang/String;

    .line 497
    const/4 v0, 0x0

    .line 498
    .local v0, "logpath":Ljava/lang/String;
    const-string v1, "/cache/assertlog"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 500
    .local v1, "path":[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 501
    .local v4, "s":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 503
    .local v5, "f":Ljava/io/File;
    const-string v6, "java.lang.ASSERT"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "PATH IS:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    .line 500
    .end local v4    # "s":Ljava/lang/String;
    .end local v5    # "f":Ljava/io/File;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 505
    .restart local v4    # "s":Ljava/lang/String;
    .restart local v5    # "f":Ljava/io/File;
    :cond_1
    :goto_1
    move-object v0, v4

    .line 507
    nop

    .line 511
    .end local v4    # "s":Ljava/lang/String;
    .end local v5    # "f":Ljava/io/File;
    :cond_2
    if-nez v0, :cond_3

    .line 512
    const/4 v2, 0x0

    return-object v2

    .line 515
    :cond_3
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 516
    .local v2, "dt":Ljava/util/Date;
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd-HH-mm-ss"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 517
    .local v3, "df":Ljava/text/DateFormat;
    const-string v4, ""

    .line 518
    .local v4, "now":Ljava/lang/String;
    invoke-virtual {v3, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 520
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private static native getProcessName_native()Ljava/lang/String;
.end method

.method private static native getSystemProperties_native(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method private static isFiltedProcess(Ljava/lang/String;)Z
    .locals 6
    .param p0, "process"    # Ljava/lang/String;

    .line 470
    const/4 v0, 0x0

    .line 471
    .local v0, "filtedproc":Ljava/lang/String;
    if-eqz p0, :cond_0

    move-object v1, p0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/oem/debug/ASSERT;->getProcessName_native()Ljava/lang/String;

    move-result-object v1

    .line 472
    .local v1, "crashproc":Ljava/lang/String;
    :goto_0
    const-string v2, "persist.assert.filtedproc"

    const-string v3, ""

    invoke-static {v2, v3}, Lcom/oem/debug/ASSERT;->getSystemProperties_native(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 474
    .local v2, "prop":Ljava/lang/String;
    const/4 v3, 0x0

    if-eqz v1, :cond_3

    if-nez v2, :cond_1

    goto :goto_1

    .line 478
    :cond_1
    invoke-virtual {v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    const/4 v3, 0x1

    nop

    :cond_2
    return v3

    .line 475
    :cond_3
    :goto_1
    return v3
.end method

.method public static panicKernel()V
    .locals 2

    .line 708
    const-string v0, "persist.sys.assert.panic"

    const-string v1, "true"

    invoke-static {v0, v1}, Lcom/oem/debug/ASSERT;->getSystemProperties_native(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 709
    invoke-static {}, Lcom/oem/debug/ASSERT;->panic_native()V

    .line 711
    :cond_0
    return-void
.end method

.method private static native panic_native()V
.end method

.method private static declared-synchronized saveErrorLog(Ljava/io/File;Ljava/lang/String;)V
    .locals 3
    .param p0, "file"    # Ljava/io/File;
    .param p1, "trace"    # Ljava/lang/String;

    const-class v0, Lcom/oem/debug/ASSERT;

    monitor-enter v0

    .line 524
    :try_start_0
    invoke-static {p1, p0}, Lcom/oem/debug/ASSERT;->writeFile(Ljava/lang/String;Ljava/io/File;)Z

    .line 525
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dumpstate -o "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " -t assert"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/oem/debug/ASSERT;->execCommand(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 526
    monitor-exit v0

    return-void

    .line 523
    .end local p0    # "file":Ljava/io/File;
    .end local p1    # "trace":Ljava/lang/String;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static native setSystemProperties_native(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private static writeFile(Ljava/lang/String;Ljava/io/File;)Z
    .locals 4
    .param p0, "longMsg"    # Ljava/lang/String;
    .param p1, "destFile"    # Ljava/io/File;

    .line 646
    const/4 v0, 0x0

    .line 648
    .local v0, "result":Z
    if-eqz p0, :cond_1

    .line 650
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 651
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 654
    :cond_0
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/FileWriter;

    invoke-direct {v2, p1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 657
    .local v1, "bw":Ljava/io/BufferedWriter;
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, p0, v2, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;II)V

    .line 658
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 659
    const/4 v0, 0x1

    .line 661
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    .line 662
    nop

    .line 666
    .end local v1    # "bw":Ljava/io/BufferedWriter;
    goto :goto_0

    .line 661
    .restart local v1    # "bw":Ljava/io/BufferedWriter;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    throw v2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 663
    .end local v1    # "bw":Ljava/io/BufferedWriter;
    :catch_0
    move-exception v1

    .line 664
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 665
    const/4 v0, 0x0

    .line 669
    .end local v1    # "e":Ljava/io/IOException;
    :cond_1
    :goto_0
    return v0
.end method
