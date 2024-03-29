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

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    sput-object v0, Lcom/oem/debug/ASSERT;->rt:Ljava/lang/Runtime;

    const/4 v0, 0x0

    sput-object v0, Lcom/oem/debug/ASSERT;->mFunctionProxy:Lcom/oem/debug/OemAssertTip;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ASSERT(Ljava/lang/String;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/oem/debug/ASSERT;->assertTrue(Ljava/lang/String;Z)V

    return-void
.end method

.method public static ASSERT(Z)V
    .locals 0

    invoke-static {p0}, Lcom/oem/debug/ASSERT;->assertTrue(Z)V

    return-void
.end method

.method public static ASSERTEXCEPTION(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0}, Lcom/oem/debug/ASSERT;->fail(Ljava/lang/Throwable;)V

    return-void
.end method

.method private static assertEquals(BB)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/oem/debug/ASSERT;->assertEquals(Ljava/lang/String;BB)V

    return-void
.end method

.method private static assertEquals(CC)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/oem/debug/ASSERT;->assertEquals(Ljava/lang/String;CC)V

    return-void
.end method

.method private static assertEquals(DDD)V
    .locals 7

    const/4 v0, 0x0

    move-wide v1, p0

    move-wide v3, p2

    move-wide v5, p4

    invoke-static/range {v0 .. v6}, Lcom/oem/debug/ASSERT;->assertEquals(Ljava/lang/String;DDD)V

    return-void
.end method

.method private static assertEquals(FFF)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0, p1, p2}, Lcom/oem/debug/ASSERT;->assertEquals(Ljava/lang/String;FFF)V

    return-void
.end method

.method private static assertEquals(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/oem/debug/ASSERT;->assertEquals(Ljava/lang/String;II)V

    return-void
.end method

.method private static assertEquals(JJ)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0, p1, p2, p3}, Lcom/oem/debug/ASSERT;->assertEquals(Ljava/lang/String;JJ)V

    return-void
.end method

.method private static assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/oem/debug/ASSERT;->assertEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private static assertEquals(Ljava/lang/String;BB)V
    .locals 2

    new-instance v0, Ljava/lang/Byte;

    invoke-direct {v0, p1}, Ljava/lang/Byte;-><init>(B)V

    new-instance v1, Ljava/lang/Byte;

    invoke-direct {v1, p2}, Ljava/lang/Byte;-><init>(B)V

    invoke-static {p0, v0, v1}, Lcom/oem/debug/ASSERT;->assertEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private static assertEquals(Ljava/lang/String;CC)V
    .locals 2

    new-instance v0, Ljava/lang/Character;

    invoke-direct {v0, p1}, Ljava/lang/Character;-><init>(C)V

    new-instance v1, Ljava/lang/Character;

    invoke-direct {v1, p2}, Ljava/lang/Character;-><init>(C)V

    invoke-static {p0, v0, v1}, Lcom/oem/debug/ASSERT;->assertEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private static assertEquals(Ljava/lang/String;DDD)V
    .locals 2

    invoke-static {}, Lcom/oem/debug/ASSERT;->getAssertEnable()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1, p2, p3, p4}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sub-double v0, p1, p3

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    cmpg-double v0, v0, p5

    if-lez v0, :cond_1

    new-instance v0, Ljava/lang/Double;

    invoke-direct {v0, p1, p2}, Ljava/lang/Double;-><init>(D)V

    new-instance v1, Ljava/lang/Double;

    invoke-direct {v1, p3, p4}, Ljava/lang/Double;-><init>(D)V

    invoke-static {p0, v0, v1}, Lcom/oem/debug/ASSERT;->failNotEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method private static assertEquals(Ljava/lang/String;FFF)V
    .locals 2

    invoke-static {}, Lcom/oem/debug/ASSERT;->getAssertEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    if-eqz v0, :cond_0

    cmpl-float v0, p1, p2

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/Float;

    invoke-direct {v0, p1}, Ljava/lang/Float;-><init>(F)V

    new-instance v1, Ljava/lang/Float;

    invoke-direct {v1, p2}, Ljava/lang/Float;-><init>(F)V

    invoke-static {p0, v0, v1}, Lcom/oem/debug/ASSERT;->failNotEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/oem/debug/ASSERT;->getAssertEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    sub-float v0, p1, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, p3

    if-lez v0, :cond_1

    new-instance v0, Ljava/lang/Float;

    invoke-direct {v0, p1}, Ljava/lang/Float;-><init>(F)V

    new-instance v1, Ljava/lang/Float;

    invoke-direct {v1, p2}, Ljava/lang/Float;-><init>(F)V

    invoke-static {p0, v0, v1}, Lcom/oem/debug/ASSERT;->failNotEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static assertEquals(Ljava/lang/String;II)V
    .locals 2

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {p0, v0, v1}, Lcom/oem/debug/ASSERT;->assertEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private static assertEquals(Ljava/lang/String;JJ)V
    .locals 2

    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p1, p2}, Ljava/lang/Long;-><init>(J)V

    new-instance v1, Ljava/lang/Long;

    invoke-direct {v1, p3, p4}, Ljava/lang/Long;-><init>(J)V

    invoke-static {p0, v0, v1}, Lcom/oem/debug/ASSERT;->assertEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private static assertEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    invoke-static {}, Lcom/oem/debug/ASSERT;->getAssertEnable()Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-static {p0, p1, p2}, Lcom/oem/debug/ASSERT;->failNotEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method private static assertEquals(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/oem/debug/ASSERT;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/oem/debug/ASSERT;->getAssertEnable()Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Lcom/oem/debug/ASSERTComparisonCompactor;

    const/16 v1, 0x14

    invoke-direct {v0, v1, p1, p2}, Lcom/oem/debug/ASSERTComparisonCompactor;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/oem/debug/ASSERTComparisonCompactor;->compact(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oem/debug/ASSERT;->fail(Ljava/lang/String;)V

    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method private static assertEquals(Ljava/lang/String;SS)V
    .locals 2

    new-instance v0, Ljava/lang/Short;

    invoke-direct {v0, p1}, Ljava/lang/Short;-><init>(S)V

    new-instance v1, Ljava/lang/Short;

    invoke-direct {v1, p2}, Ljava/lang/Short;-><init>(S)V

    invoke-static {p0, v0, v1}, Lcom/oem/debug/ASSERT;->assertEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private static assertEquals(Ljava/lang/String;ZZ)V
    .locals 2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/oem/debug/ASSERT;->assertEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private static assertEquals(SS)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/oem/debug/ASSERT;->assertEquals(Ljava/lang/String;SS)V

    return-void
.end method

.method private static assertEquals(ZZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/oem/debug/ASSERT;->assertEquals(Ljava/lang/String;ZZ)V

    return-void
.end method

.method private static assertFalse(Ljava/lang/String;Z)V
    .locals 1

    xor-int/lit8 v0, p1, 0x1

    invoke-static {p0, v0}, Lcom/oem/debug/ASSERT;->assertTrue(Ljava/lang/String;Z)V

    return-void
.end method

.method private static assertFalse(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/oem/debug/ASSERT;->assertFalse(Ljava/lang/String;Z)V

    return-void
.end method

.method private static assertNotNull(Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/oem/debug/ASSERT;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private static assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p0, v0}, Lcom/oem/debug/ASSERT;->assertTrue(Ljava/lang/String;Z)V

    return-void
.end method

.method private static assertNotSame(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/oem/debug/ASSERT;->assertNotSame(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private static assertNotSame(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    invoke-static {}, Lcom/oem/debug/ASSERT;->getAssertEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    if-ne p1, p2, :cond_0

    invoke-static {p0}, Lcom/oem/debug/ASSERT;->failSame(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static assertNull(Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/oem/debug/ASSERT;->assertNull(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private static assertNull(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p0, v0}, Lcom/oem/debug/ASSERT;->assertTrue(Ljava/lang/String;Z)V

    return-void
.end method

.method private static assertSame(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/oem/debug/ASSERT;->assertSame(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private static assertSame(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    invoke-static {}, Lcom/oem/debug/ASSERT;->getAssertEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/oem/debug/ASSERT;->failNotSame(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method private static assertTrue(Ljava/lang/String;Z)V
    .locals 1

    invoke-static {}, Lcom/oem/debug/ASSERT;->getAssertEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    invoke-static {p0}, Lcom/oem/debug/ASSERT;->fail(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static assertTrue(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/oem/debug/ASSERT;->assertTrue(Ljava/lang/String;Z)V

    return-void
.end method

.method private static copy2File(Ljava/io/BufferedReader;Ljava/io/File;)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    :cond_0
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/FileWriter;

    invoke-direct {v2, p1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    :goto_0
    :try_start_1
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v2, v0, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;II)V

    invoke-virtual {v1}, Ljava/io/BufferedWriter;->newLine()V

    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    nop

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    throw v2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    return v0
.end method

.method private static copy2File(Ljava/io/InputStream;Ljava/io/File;)Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    :cond_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v2, 0x1000

    :try_start_1
    new-array v2, v2, [B

    :goto_0
    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    move v4, v3

    if-ltz v3, :cond_1

    invoke-virtual {v1, v2, v0, v4}, Ljava/io/OutputStream;->write([BII)V

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    :try_start_2
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    nop

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    throw v2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    return v0
.end method

.method private static copyFile(Ljava/io/File;Ljava/io/File;)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {v1, p1}, Lcom/oem/debug/ASSERT;->copy2File(Ljava/io/InputStream;Ljava/io/File;)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v2

    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    nop

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw v2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static disableInterrupt()V
    .locals 2

    :try_start_0
    sget-object v0, Lcom/oem/debug/ASSERT;->rt:Ljava/lang/Runtime;

    const-string v1, "/system/bin/sh /system/bin/disableinterrupt.sh"

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private static displayErrorInfo(Ljava/lang/String;)V
    .locals 2

    const-string v0, "persist.sys.assert.panic"

    const-string v1, "true"

    invoke-static {v0, v1}, Lcom/oem/debug/ASSERT;->getSystemProperties_native(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "ro.runtime.assert"

    const-string v1, "false"

    invoke-static {v0, v1}, Lcom/oem/debug/ASSERT;->getSystemProperties_native(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "ro.runtime.assert"

    const-string v1, "true"

    invoke-static {v0, v1}, Lcom/oem/debug/ASSERT;->setSystemProperties_native(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/oem/debug/ASSERT;->displayErrorInfo_native(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private static native displayErrorInfo_native(Ljava/lang/String;)V
.end method

.method public static epitaph(Ljava/io/File;Ljava/lang/String;I)Z
    .locals 15

    move-object v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {}, Lcom/oem/debug/OemAssertTip;->getInstance()Lcom/oem/debug/OemAssertTip;

    move-result-object v0

    sput-object v0, Lcom/oem/debug/ASSERT;->mFunctionProxy:Lcom/oem/debug/OemAssertTip;

    const/4 v6, -0x1

    const/4 v7, 0x0

    if-nez v1, :cond_0

    return v7

    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v2, v0

    and-int/lit8 v0, p2, 0x4

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v0, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v2, v0

    :cond_1
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    invoke-direct {v8, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v3, v0

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v8, 0x400

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v9, v0

    move v0, v7

    :goto_0
    move v10, v0

    const/4 v0, 0x1

    if-ge v10, v8, :cond_4

    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v11

    move-object v12, v11

    if-eqz v11, :cond_4

    const-string v11, "-----"

    invoke-virtual {v12, v11, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_2

    goto :goto_1

    :cond_2
    const-string v11, "Process: "

    invoke-virtual {v12, v11, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_3

    const-string v11, ":"

    invoke-virtual {v12, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    add-int/2addr v11, v0

    invoke-virtual {v12, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    :cond_3
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\r\n"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/2addr v0, v10

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    throw v0

    :cond_4
    :goto_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    nop

    invoke-static {v5}, Lcom/oem/debug/ASSERT;->isFiltedProcess(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    return v7

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

    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v12, Ljava/io/FileInputStream;

    invoke-direct {v12, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v2, v12

    and-int/lit8 v12, p2, 0x4

    if-eqz v12, :cond_6

    new-instance v12, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v12, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v2, v12

    :cond_6
    invoke-static {v2, v11}, Lcom/oem/debug/ASSERT;->copy2File(Ljava/io/InputStream;Ljava/io/File;)Z

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

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

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v13, "persist.sys.assert.enable"

    const-string v14, "true"

    invoke-static {v13, v14}, Lcom/oem/debug/ASSERT;->getSystemProperties_native(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "false"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    const-string v13, "assert state is close"

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_7
    sget-object v13, Lcom/oem/debug/ASSERT;->mFunctionProxy:Lcom/oem/debug/OemAssertTip;

    invoke-virtual {v13, v12}, Lcom/oem/debug/OemAssertTip;->requestShowAssertMessage(Ljava/lang/String;)I

    move-result v13
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move v6, v13

    :goto_2
    nop

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    return v7
.end method

.method private static execCommand(Ljava/lang/String;)V
    .locals 4

    if-nez p0, :cond_0

    return-void

    :cond_0
    :try_start_0
    sget-object v0, Lcom/oem/debug/ASSERT;->rt:Ljava/lang/Runtime;

    invoke-virtual {v0, p0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    goto :goto_1

    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    throw v2
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_1
    nop

    :goto_2
    return-void
.end method

.method public static fail()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/oem/debug/ASSERT;->fail(Ljava/lang/String;)V

    return-void
.end method

.method public static fail(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Ljava/lang/Error;

    invoke-direct {v0, p0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/oem/debug/ASSERT;->fail(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static fail(Ljava/lang/Throwable;)V
    .locals 9

    invoke-static {}, Lcom/oem/debug/ASSERT;->getAssertEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/oem/debug/ASSERT;->isFiltedProcess(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/oem/debug/ASSERT;->getProcessName_native()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    const-string v3, "NONE"

    :cond_0
    invoke-static {}, Lcom/oem/debug/ASSERT;->disableInterrupt()V

    invoke-static {v3, v2}, Lcom/oem/debug/ASSERT;->getDisplayInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3}, Lcom/oem/debug/ASSERT;->getPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v6, v4}, Lcom/oem/debug/ASSERT;->saveErrorLog(Ljava/io/File;Ljava/lang/String;)V

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

    :cond_1
    return-void
.end method

.method private static failNotEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/oem/debug/ASSERT;->format(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oem/debug/ASSERT;->fail(Ljava/lang/String;)V

    return-void
.end method

.method private static failNotSame(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    const-string v0, ""

    if-eqz p0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

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

    return-void
.end method

.method private static failSame(Ljava/lang/String;)V
    .locals 3

    const-string v0, ""

    if-eqz p0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "expected not same"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/oem/debug/ASSERT;->fail(Ljava/lang/String;)V

    return-void
.end method

.method static format(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    if-eqz p0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

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

    const-string v0, "persist.sys.assert.enable"

    const-string v1, "false"

    invoke-static {v0, v1}, Lcom/oem/debug/ASSERT;->getSystemProperties_native(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static getDisplayInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    const-string v0, "java.lang.ASSERT."

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x400

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, p1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

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

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_3

    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0xa

    if-ne v7, v8, :cond_1

    invoke-virtual {v4, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\r\n"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v3, v6, 0x1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    add-int/lit8 v8, v5, -0x1

    if-ne v6, v8, :cond_2

    invoke-virtual {v4, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\r\n"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method private static getPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const/4 v0, 0x0

    const-string v1, "/cache/assertlog"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v6, "java.lang.ASSERT"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "PATH IS:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    move-object v0, v4

    nop

    :cond_2
    if-nez v0, :cond_3

    const/4 v2, 0x0

    return-object v2

    :cond_3
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd-HH-mm-ss"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-string v4, ""

    invoke-virtual {v3, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

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

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    move-object v1, p0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/oem/debug/ASSERT;->getProcessName_native()Ljava/lang/String;

    move-result-object v1

    :goto_0
    const-string v2, "persist.assert.filtedproc"

    const-string v3, ""

    invoke-static {v2, v3}, Lcom/oem/debug/ASSERT;->getSystemProperties_native(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    const/4 v3, 0x1

    nop

    :cond_2
    return v3

    :cond_3
    :goto_1
    return v3
.end method

.method public static panicKernel()V
    .locals 2

    const-string v0, "persist.sys.assert.panic"

    const-string v1, "true"

    invoke-static {v0, v1}, Lcom/oem/debug/ASSERT;->getSystemProperties_native(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/oem/debug/ASSERT;->panic_native()V

    :cond_0
    return-void
.end method

.method private static native panic_native()V
.end method

.method private static declared-synchronized saveErrorLog(Ljava/io/File;Ljava/lang/String;)V
    .locals 3

    const-class v0, Lcom/oem/debug/ASSERT;

    monitor-enter v0

    :try_start_0
    invoke-static {p1, p0}, Lcom/oem/debug/ASSERT;->writeFile(Ljava/lang/String;Ljava/io/File;)Z

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

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static native setSystemProperties_native(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private static writeFile(Ljava/lang/String;Ljava/io/File;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    :cond_0
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/FileWriter;

    invoke-direct {v2, p1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, p0, v2, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;II)V

    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x1

    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    nop

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    throw v2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method
