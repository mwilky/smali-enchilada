.class public final Lcom/google/common/html/HtmlEscapers;
.super Ljava/lang/Object;
.source "HtmlEscapers.java"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation


# static fields
.field private static final HTML_ESCAPER:Lcom/google/common/escape/Escaper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 66
    invoke-static {}, Lcom/google/common/escape/Escapers;->builder()Lcom/google/common/escape/Escapers$Builder;

    move-result-object v0

    const-string v1, "&quot;"

    .line 67
    const/16 v2, 0x22

    invoke-virtual {v0, v2, v1}, Lcom/google/common/escape/Escapers$Builder;->addEscape(CLjava/lang/String;)Lcom/google/common/escape/Escapers$Builder;

    move-result-object v0

    const-string v1, "&#39;"

    .line 69
    const/16 v2, 0x27

    invoke-virtual {v0, v2, v1}, Lcom/google/common/escape/Escapers$Builder;->addEscape(CLjava/lang/String;)Lcom/google/common/escape/Escapers$Builder;

    move-result-object v0

    const-string v1, "&amp;"

    .line 70
    const/16 v2, 0x26

    invoke-virtual {v0, v2, v1}, Lcom/google/common/escape/Escapers$Builder;->addEscape(CLjava/lang/String;)Lcom/google/common/escape/Escapers$Builder;

    move-result-object v0

    const-string v1, "&lt;"

    .line 71
    const/16 v2, 0x3c

    invoke-virtual {v0, v2, v1}, Lcom/google/common/escape/Escapers$Builder;->addEscape(CLjava/lang/String;)Lcom/google/common/escape/Escapers$Builder;

    move-result-object v0

    const-string v1, "&gt;"

    .line 72
    const/16 v2, 0x3e

    invoke-virtual {v0, v2, v1}, Lcom/google/common/escape/Escapers$Builder;->addEscape(CLjava/lang/String;)Lcom/google/common/escape/Escapers$Builder;

    move-result-object v0

    .line 73
    invoke-virtual {v0}, Lcom/google/common/escape/Escapers$Builder;->build()Lcom/google/common/escape/Escaper;

    move-result-object v0

    sput-object v0, Lcom/google/common/html/HtmlEscapers;->HTML_ESCAPER:Lcom/google/common/escape/Escaper;

    .line 65
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static htmlEscaper()Lcom/google/common/escape/Escaper;
    .locals 1

    .line 59
    sget-object v0, Lcom/google/common/html/HtmlEscapers;->HTML_ESCAPER:Lcom/google/common/escape/Escaper;

    return-object v0
.end method
