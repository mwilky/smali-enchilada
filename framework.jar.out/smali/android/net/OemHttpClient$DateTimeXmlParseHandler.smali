.class public Landroid/net/OemHttpClient$DateTimeXmlParseHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "OemHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/OemHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DateTimeXmlParseHandler"
.end annotation


# instance fields
.field private mDateString:Ljava/lang/String;

.field private mIsDateFlag:Z

.field private mIsTimeFlag:Z

.field private mIsTimeZoneFlag:Z

.field private mTimeString:Ljava/lang/String;

.field private mTimeZoneString:Ljava/lang/String;

.field final synthetic this$0:Landroid/net/OemHttpClient;


# direct methods
.method public constructor <init>(Landroid/net/OemHttpClient;)V
    .locals 1
    .param p1, "this$0"    # Landroid/net/OemHttpClient;

    .line 231
    iput-object p1, p0, Landroid/net/OemHttpClient$DateTimeXmlParseHandler;->this$0:Landroid/net/OemHttpClient;

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 232
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/OemHttpClient$DateTimeXmlParseHandler;->mIsTimeZoneFlag:Z

    .line 233
    iput-boolean v0, p0, Landroid/net/OemHttpClient$DateTimeXmlParseHandler;->mIsDateFlag:Z

    .line 234
    iput-boolean v0, p0, Landroid/net/OemHttpClient$DateTimeXmlParseHandler;->mIsTimeFlag:Z

    .line 235
    const-string v0, ""

    iput-object v0, p0, Landroid/net/OemHttpClient$DateTimeXmlParseHandler;->mTimeZoneString:Ljava/lang/String;

    .line 236
    const-string v0, ""

    iput-object v0, p0, Landroid/net/OemHttpClient$DateTimeXmlParseHandler;->mDateString:Ljava/lang/String;

    .line 237
    const-string v0, ""

    iput-object v0, p0, Landroid/net/OemHttpClient$DateTimeXmlParseHandler;->mTimeString:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 242
    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/DefaultHandler;->characters([CII)V

    .line 243
    iget-boolean v0, p0, Landroid/net/OemHttpClient$DateTimeXmlParseHandler;->mIsTimeZoneFlag:Z

    if-eqz v0, :cond_0

    .line 244
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Landroid/net/OemHttpClient$DateTimeXmlParseHandler;->mTimeZoneString:Ljava/lang/String;

    goto :goto_0

    .line 245
    :cond_0
    iget-boolean v0, p0, Landroid/net/OemHttpClient$DateTimeXmlParseHandler;->mIsDateFlag:Z

    if-eqz v0, :cond_1

    .line 246
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Landroid/net/OemHttpClient$DateTimeXmlParseHandler;->mDateString:Ljava/lang/String;

    goto :goto_0

    .line 247
    :cond_1
    iget-boolean v0, p0, Landroid/net/OemHttpClient$DateTimeXmlParseHandler;->mIsTimeFlag:Z

    if-eqz v0, :cond_2

    .line 248
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Landroid/net/OemHttpClient$DateTimeXmlParseHandler;->mTimeString:Ljava/lang/String;

    .line 250
    :cond_2
    :goto_0
    return-void
.end method

.method public endDocument()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 254
    invoke-super {p0}, Lorg/xml/sax/helpers/DefaultHandler;->endDocument()V

    .line 255
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 260
    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/DefaultHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    const-string v0, "TimeZone"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 262
    iput-boolean v1, p0, Landroid/net/OemHttpClient$DateTimeXmlParseHandler;->mIsTimeZoneFlag:Z

    goto :goto_0

    .line 263
    :cond_0
    const-string v0, "Date"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 264
    iput-boolean v1, p0, Landroid/net/OemHttpClient$DateTimeXmlParseHandler;->mIsDateFlag:Z

    goto :goto_0

    .line 265
    :cond_1
    const-string v0, "Time"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 266
    iput-boolean v1, p0, Landroid/net/OemHttpClient$DateTimeXmlParseHandler;->mIsTimeFlag:Z

    .line 268
    :cond_2
    :goto_0
    return-void
.end method

.method public getDate()Ljava/lang/String;
    .locals 1

    .line 295
    iget-object v0, p0, Landroid/net/OemHttpClient$DateTimeXmlParseHandler;->mDateString:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()Ljava/lang/String;
    .locals 1

    .line 299
    iget-object v0, p0, Landroid/net/OemHttpClient$DateTimeXmlParseHandler;->mTimeString:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeZone()Ljava/lang/String;
    .locals 1

    .line 291
    iget-object v0, p0, Landroid/net/OemHttpClient$DateTimeXmlParseHandler;->mTimeZoneString:Ljava/lang/String;

    return-object v0
.end method

.method public startDocument()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 272
    invoke-super {p0}, Lorg/xml/sax/helpers/DefaultHandler;->startDocument()V

    .line 273
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 278
    invoke-super {p0, p1, p2, p3, p4}, Lorg/xml/sax/helpers/DefaultHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 279
    const-string v0, "TimeZone"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 280
    iput-boolean v1, p0, Landroid/net/OemHttpClient$DateTimeXmlParseHandler;->mIsTimeZoneFlag:Z

    goto :goto_0

    .line 282
    :cond_0
    const-string v0, "Date"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 283
    iput-boolean v1, p0, Landroid/net/OemHttpClient$DateTimeXmlParseHandler;->mIsDateFlag:Z

    goto :goto_0

    .line 285
    :cond_1
    const-string v0, "Time"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 286
    iput-boolean v1, p0, Landroid/net/OemHttpClient$DateTimeXmlParseHandler;->mIsTimeFlag:Z

    .line 288
    :cond_2
    :goto_0
    return-void
.end method
