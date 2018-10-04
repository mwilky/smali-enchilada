.class public Landroid/util/Xml;
.super Ljava/lang/Object;
.source "Xml.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/Xml$Encoding;,
        Landroid/util/Xml$XmlSerializerFactory;
    }
.end annotation


# static fields
.field public static FEATURE_RELAXED:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "http://xmlpull.org/v1/doc/features.html#relaxed"

    sput-object v0, Landroid/util/Xml;->FEATURE_RELAXED:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;
    .locals 1

    instance-of v0, p0, Landroid/util/AttributeSet;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Landroid/util/AttributeSet;

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/util/XmlPullAttributes;

    invoke-direct {v0, p0}, Landroid/util/XmlPullAttributes;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_0
    return-object v0
.end method

.method public static findEncodingByName(Ljava/lang/String;)Landroid/util/Xml$Encoding;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    if-nez p0, :cond_0

    sget-object v0, Landroid/util/Xml$Encoding;->UTF_8:Landroid/util/Xml$Encoding;

    return-object v0

    :cond_0
    invoke-static {}, Landroid/util/Xml$Encoding;->values()[Landroid/util/Xml$Encoding;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    iget-object v4, v3, Landroid/util/Xml$Encoding;->expatName:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v0, p0}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static newPullParser()Lorg/xmlpull/v1/XmlPullParser;
    .locals 3

    :try_start_0
    new-instance v0, Lorg/kxml2/io/KXmlParser;

    invoke-direct {v0}, Lorg/kxml2/io/KXmlParser;-><init>()V

    const-string v1, "http://xmlpull.org/v1/doc/features.html#process-docdecl"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/kxml2/io/KXmlParser;->setFeature(Ljava/lang/String;Z)V

    const-string v1, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    invoke-virtual {v0, v1, v2}, Lorg/kxml2/io/KXmlParser;->setFeature(Ljava/lang/String;Z)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method public static newSerializer()Lorg/xmlpull/v1/XmlSerializer;
    .locals 2

    :try_start_0
    sget-object v0, Landroid/util/Xml$XmlSerializerFactory;->instance:Lorg/xmlpull/v1/XmlPullParserFactory;

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v0
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public static parse(Ljava/io/InputStream;Landroid/util/Xml$Encoding;Lorg/xml/sax/ContentHandler;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    new-instance v0, Lorg/apache/harmony/xml/ExpatReader;

    invoke-direct {v0}, Lorg/apache/harmony/xml/ExpatReader;-><init>()V

    invoke-interface {v0, p2}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    new-instance v1, Lorg/xml/sax/InputSource;

    invoke-direct {v1, p0}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    iget-object v2, p1, Landroid/util/Xml$Encoding;->expatName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/xml/sax/InputSource;->setEncoding(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    return-void
.end method

.method public static parse(Ljava/io/Reader;Lorg/xml/sax/ContentHandler;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    new-instance v0, Lorg/apache/harmony/xml/ExpatReader;

    invoke-direct {v0}, Lorg/apache/harmony/xml/ExpatReader;-><init>()V

    invoke-interface {v0, p1}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    new-instance v1, Lorg/xml/sax/InputSource;

    invoke-direct {v1, p0}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-interface {v0, v1}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    return-void
.end method

.method public static parse(Ljava/lang/String;Lorg/xml/sax/ContentHandler;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Lorg/apache/harmony/xml/ExpatReader;

    invoke-direct {v0}, Lorg/apache/harmony/xml/ExpatReader;-><init>()V

    invoke-interface {v0, p1}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    new-instance v1, Lorg/xml/sax/InputSource;

    new-instance v2, Ljava/io/StringReader;

    invoke-direct {v2, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-interface {v0, v1}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method
