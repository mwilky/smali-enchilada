.class public Landroid/content/ClipData$Item;
.super Ljava/lang/Object;
.source "ClipData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/ClipData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Item"
.end annotation


# instance fields
.field final mHtmlText:Ljava/lang/String;

.field final mIntent:Landroid/content/Intent;

.field final mText:Ljava/lang/CharSequence;

.field mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/ClipData$Item;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Landroid/content/ClipData$Item;->mText:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/content/ClipData$Item;->mText:Ljava/lang/CharSequence;

    iget-object v0, p1, Landroid/content/ClipData$Item;->mHtmlText:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/ClipData$Item;->mHtmlText:Ljava/lang/String;

    iget-object v0, p1, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    iput-object v0, p0, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    iget-object v0, p1, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    iput-object v0, p0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/ClipData$Item;->mText:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/content/ClipData$Item;->mHtmlText:Ljava/lang/String;

    iput-object p1, p0, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    iput-object v0, p0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/ClipData$Item;->mText:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/content/ClipData$Item;->mHtmlText:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    iput-object p1, p0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/content/ClipData$Item;->mText:Ljava/lang/CharSequence;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/ClipData$Item;->mHtmlText:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    iput-object v0, p0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/content/Intent;Landroid/net/Uri;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/content/ClipData$Item;->mText:Ljava/lang/CharSequence;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/ClipData$Item;->mHtmlText:Ljava/lang/String;

    iput-object p2, p0, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    iput-object p3, p0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/content/ClipData$Item;->mText:Ljava/lang/CharSequence;

    iput-object p2, p0, Landroid/content/ClipData$Item;->mHtmlText:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    iput-object v0, p0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/String;Landroid/content/Intent;Landroid/net/Uri;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Plain text must be supplied if HTML text is supplied"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iput-object p1, p0, Landroid/content/ClipData$Item;->mText:Ljava/lang/CharSequence;

    iput-object p2, p0, Landroid/content/ClipData$Item;->mHtmlText:Ljava/lang/String;

    iput-object p3, p0, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    iput-object p4, p0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    return-void
.end method

.method private coerceToHtmlOrStyledText(Landroid/content/Context;Z)Ljava/lang/CharSequence;
    .locals 13

    iget-object v0, p0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_16

    const/4 v0, 0x0

    move-object v1, v0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    const-string/jumbo v4, "text/*"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentResolver;->getStreamTypes(Landroid/net/Uri;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    goto :goto_0

    :catch_0
    move-exception v2

    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v1, :cond_3

    array-length v5, v1

    move v6, v3

    move v3, v2

    move v2, v4

    :goto_1
    if-ge v2, v5, :cond_2

    aget-object v7, v1, v2

    const-string/jumbo v8, "text/html"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v3, 0x1

    goto :goto_2

    :cond_0
    const-string/jumbo v8, "text/"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v6, 0x1

    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    move v2, v3

    move v3, v6

    :cond_3
    if-nez v2, :cond_4

    if-eqz v3, :cond_11

    :cond_4
    move-object v5, v0

    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    iget-object v7, p0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    if-eqz v2, :cond_5

    const-string/jumbo v8, "text/html"

    goto :goto_3

    :cond_5
    const-string/jumbo v8, "text/plain"

    :goto_3
    invoke-virtual {v6, v7, v8, v0}, Landroid/content/ContentResolver;->openTypedAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    move-result-object v6

    move-object v5, v6

    new-instance v6, Ljava/io/InputStreamReader;

    const-string v7, "UTF-8"

    invoke-direct {v6, v5, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    const/16 v8, 0x80

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v8, 0x2000

    new-array v8, v8, [C

    :goto_4
    invoke-virtual {v6, v8}, Ljava/io/InputStreamReader;->read([C)I

    move-result v9

    move v10, v9

    if-lez v9, :cond_6

    invoke-virtual {v7, v8, v4, v10}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_6
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_c

    if-eqz p2, :cond_a

    :try_start_2
    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v9
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v9, :cond_7

    move-object v11, v9

    goto :goto_5

    :cond_7
    move-object v11, v4

    :goto_5
    if-eqz v5, :cond_8

    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_6

    :catch_1
    move-exception v12

    :cond_8
    :goto_6
    return-object v11

    :catch_2
    move-exception v9

    nop

    if-eqz v5, :cond_9

    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_7

    :catch_3
    move-exception v11

    :cond_9
    :goto_7
    return-object v4

    :cond_a
    :try_start_5
    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v9
    :try_end_5
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_b
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_9
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v5, :cond_b

    :try_start_6
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_8

    :catch_4
    move-exception v11

    :cond_b
    :goto_8
    return-object v9

    :cond_c
    if-eqz p2, :cond_e

    nop

    if-eqz v5, :cond_d

    :try_start_7
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_9

    :catch_5
    move-exception v9

    :cond_d
    :goto_9
    return-object v4

    :cond_e
    :try_start_8
    invoke-static {v4}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9
    :try_end_8
    .catch Ljava/lang/SecurityException; {:try_start_8 .. :try_end_8} :catch_b
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_9
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-eqz v5, :cond_f

    :try_start_9
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    goto :goto_a

    :catch_6
    move-exception v11

    :cond_f
    :goto_a
    return-object v9

    :catchall_0
    move-exception v0

    goto :goto_f

    :catch_7
    move-exception v0

    :try_start_a
    const-string v4, "ClipData"

    const-string v6, "Failure loading text"

    invoke-static {v4, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    if-eqz v5, :cond_10

    :try_start_b
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    goto :goto_b

    :catch_8
    move-exception v6

    :cond_10
    :goto_b
    return-object v4

    :catch_9
    move-exception v0

    if-eqz v5, :cond_11

    :try_start_c
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_a

    :goto_c
    goto :goto_d

    :catch_a
    move-exception v0

    goto :goto_c

    :catch_b
    move-exception v0

    :try_start_d
    const-string v4, "ClipData"

    const-string v6, "Failure opening stream"

    invoke-static {v4, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    if-eqz v5, :cond_11

    :try_start_e
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_a

    goto :goto_c

    :cond_11
    :goto_d
    iget-object v0, p0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v4, "content"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_14

    const-string v4, "android.resource"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_14

    const-string v4, "file"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    goto :goto_e

    :cond_12
    if-eqz p2, :cond_13

    iget-object v4, p0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Landroid/content/ClipData$Item;->uriToStyledText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    return-object v4

    :cond_13
    iget-object v4, p0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Landroid/content/ClipData$Item;->uriToHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    return-object v4

    :cond_14
    :goto_e
    const-string v4, ""

    return-object v4

    :goto_f
    if-eqz v5, :cond_15

    :try_start_f
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_c

    goto :goto_10

    :catch_c
    move-exception v4

    :cond_15
    :goto_10
    throw v0

    :cond_16
    iget-object v0, p0, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    if-eqz p2, :cond_17

    iget-object v1, p0, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/ClipData$Item;->uriToStyledText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    :cond_17
    iget-object v1, p0, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/ClipData$Item;->uriToHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_18
    const-string v0, ""

    return-object v0
.end method

.method private uriToHtml(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "<a href=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "</a>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private uriToStyledText(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 5

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    new-instance v1, Landroid/text/style/URLSpan;

    invoke-direct {v1, p1}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    const/4 v3, 0x0

    const/16 v4, 0x21

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-object v0
.end method


# virtual methods
.method public coerceToHtmlText(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Landroid/content/ClipData$Item;->getHtmlText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_2

    instance-of v2, v1, Landroid/text/Spanned;

    if-eqz v2, :cond_1

    move-object v2, v1

    check-cast v2, Landroid/text/Spanned;

    invoke-static {v2}, Landroid/text/Html;->toHtml(Landroid/text/Spanned;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_1
    invoke-static {v1}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_2
    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, Landroid/content/ClipData$Item;->coerceToHtmlOrStyledText(Landroid/content/Context;Z)Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    return-object v2
.end method

.method public coerceToStyledText(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 3

    invoke-virtual {p0}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    instance-of v1, v0, Landroid/text/Spanned;

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/ClipData$Item;->getHtmlText()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    :try_start_0
    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_1

    return-object v2

    :cond_1
    goto :goto_0

    :catch_0
    move-exception v2

    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    return-object v0

    :cond_3
    const/4 v2, 0x1

    invoke-direct {p0, p1, v2}, Landroid/content/ClipData$Item;->coerceToHtmlOrStyledText(Landroid/content/Context;Z)Ljava/lang/CharSequence;

    move-result-object v2

    return-object v2
.end method

.method public coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 10

    invoke-virtual {p0}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v6, v5

    :try_start_0
    const-string/jumbo v7, "text/*"

    invoke-virtual {v2, v1, v7, v5}, Landroid/content/ContentResolver;->openTypedAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v5

    :goto_0
    goto :goto_1

    :catchall_0
    move-exception v5

    goto/16 :goto_4

    :catch_0
    move-exception v5

    goto :goto_1

    :catch_1
    move-exception v5

    :try_start_1
    const-string v7, "ClipData"

    const-string v8, "Failure opening stream"

    invoke-static {v7, v8, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    if-eqz v3, :cond_2

    :try_start_2
    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    move-result-object v5

    move-object v4, v5

    new-instance v5, Ljava/io/InputStreamReader;

    const-string v7, "UTF-8"

    invoke-direct {v5, v4, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    move-object v6, v5

    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v7, 0x80

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v7, 0x2000

    new-array v7, v7, [C

    :goto_2
    invoke-virtual {v6, v7}, Ljava/io/InputStreamReader;->read([C)I

    move-result v8

    move v9, v8

    if-lez v8, :cond_1

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8, v9}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_1
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object v8

    :catch_2
    move-exception v5

    :try_start_3
    const-string v7, "ClipData"

    const-string v8, "Failure loading text"

    invoke-static {v7, v8, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v5}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object v7

    :cond_2
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    nop

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    const-string v7, "content"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string v7, "android.resource"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string v7, "file"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    :cond_4
    :goto_3
    const-string v7, ""

    return-object v7

    :goto_4
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v5

    :cond_5
    invoke-virtual {p0}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_6

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_6
    const-string v3, ""

    return-object v3
.end method

.method public getHtmlText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/content/ClipData$Item;->mHtmlText:Ljava/lang/String;

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/content/ClipData$Item;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public toShortString(Ljava/lang/StringBuilder;)V
    .locals 7

    iget-object v0, p0, Landroid/content/ClipData$Item;->mHtmlText:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "H:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroid/content/ClipData$Item;->mHtmlText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/content/ClipData$Item;->mText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    const-string v0, "T:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroid/content/ClipData$Item;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_2

    const-string v0, "U:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_3

    const-string v0, "I:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/Intent;->toShortString(Ljava/lang/StringBuilder;ZZZZ)V

    goto :goto_0

    :cond_3
    const-string v0, "NULL"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    return-void
.end method

.method public toShortSummaryString(Ljava/lang/StringBuilder;)V
    .locals 7

    iget-object v0, p0, Landroid/content/ClipData$Item;->mHtmlText:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "HTML"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/content/ClipData$Item;->mText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    const-string v0, "TEXT"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_2

    const-string v0, "U:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_3

    const-string v0, "I:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/Intent;->toShortString(Ljava/lang/StringBuilder;ZZZZ)V

    goto :goto_0

    :cond_3
    const-string v0, "NULL"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "ClipData.Item { "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Landroid/content/ClipData$Item;->toShortString(Ljava/lang/StringBuilder;)V

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 11

    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    iget-object v2, p0, Landroid/content/ClipData$Item;->mHtmlText:Ljava/lang/String;

    if-eqz v2, :cond_0

    const-wide v2, 0x10900000001L

    iget-object v4, p0, Landroid/content/ClipData$Item;->mHtmlText:Ljava/lang/String;

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Landroid/content/ClipData$Item;->mText:Ljava/lang/CharSequence;

    if-eqz v2, :cond_1

    const-wide v2, 0x10900000002L

    iget-object v4, p0, Landroid/content/ClipData$Item;->mText:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    if-eqz v2, :cond_2

    const-wide v2, 0x10900000003L

    iget-object v4, p0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    if-eqz v2, :cond_3

    iget-object v3, p0, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    const-wide v5, 0x10b00000004L

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x1

    move-object v4, p1

    invoke-virtual/range {v3 .. v10}, Landroid/content/Intent;->writeToProto(Landroid/util/proto/ProtoOutputStream;JZZZZ)V

    goto :goto_0

    :cond_3
    const-wide v2, 0x10800000005L

    const/4 v4, 0x1

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method
