.class Lcom/google/common/base/CharMatcher$3;
.super Lcom/google/common/base/CharMatcher;
.source "CharMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .line 169
    invoke-direct {p0, p1}, Lcom/google/common/base/CharMatcher;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public matches(C)Z
    .locals 1
    .param p1, "c"    # C

    .line 171
    invoke-static {p1}, Ljava/lang/Character;->isLetter(C)Z

    move-result v0

    return v0
.end method
