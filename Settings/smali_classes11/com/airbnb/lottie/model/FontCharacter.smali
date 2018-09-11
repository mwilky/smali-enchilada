.class public Lcom/airbnb/lottie/model/FontCharacter;
.super Ljava/lang/Object;
.source "FontCharacter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/model/FontCharacter$Factory;
    }
.end annotation


# instance fields
.field private final character:C

.field private final fontFamily:Ljava/lang/String;

.field private final shapes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/model/content/ShapeGroup;",
            ">;"
        }
    .end annotation
.end field

.field private final size:I

.field private final style:Ljava/lang/String;

.field private final width:D


# direct methods
.method constructor <init>(Ljava/util/List;CIDLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "character"    # C
    .param p3, "size"    # I
    .param p4, "width"    # D
    .param p6, "style"    # Ljava/lang/String;
    .param p7, "fontFamily"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/model/content/ShapeGroup;",
            ">;CID",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 31
    .local p1, "shapes":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/content/ShapeGroup;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/airbnb/lottie/model/FontCharacter;->shapes:Ljava/util/List;

    .line 33
    iput-char p2, p0, Lcom/airbnb/lottie/model/FontCharacter;->character:C

    .line 34
    iput p3, p0, Lcom/airbnb/lottie/model/FontCharacter;->size:I

    .line 35
    iput-wide p4, p0, Lcom/airbnb/lottie/model/FontCharacter;->width:D

    .line 36
    iput-object p6, p0, Lcom/airbnb/lottie/model/FontCharacter;->style:Ljava/lang/String;

    .line 37
    iput-object p7, p0, Lcom/airbnb/lottie/model/FontCharacter;->fontFamily:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public static hashFor(CLjava/lang/String;Ljava/lang/String;)I
    .locals 4
    .param p0, "character"    # C
    .param p1, "fontFamily"    # Ljava/lang/String;
    .param p2, "style"    # Ljava/lang/String;

    .line 16
    const/4 v0, 0x0

    .line 17
    .local v0, "result":I
    const/16 v1, 0x1f

    mul-int v2, v1, v0

    add-int/2addr v2, p0

    .line 18
    .end local v0    # "result":I
    .local v2, "result":I
    mul-int v0, v1, v2

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int/2addr v0, v3

    .line 19
    .end local v2    # "result":I
    .restart local v0    # "result":I
    mul-int/2addr v1, v0

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 20
    .end local v0    # "result":I
    .local v1, "result":I
    return v1
.end method


# virtual methods
.method public getShapes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/model/content/ShapeGroup;",
            ">;"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/airbnb/lottie/model/FontCharacter;->shapes:Ljava/util/List;

    return-object v0
.end method

.method getSize()I
    .locals 1

    .line 45
    iget v0, p0, Lcom/airbnb/lottie/model/FontCharacter;->size:I

    return v0
.end method

.method getStyle()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/airbnb/lottie/model/FontCharacter;->style:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()D
    .locals 2

    .line 49
    iget-wide v0, p0, Lcom/airbnb/lottie/model/FontCharacter;->width:D

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    .line 83
    iget-char v0, p0, Lcom/airbnb/lottie/model/FontCharacter;->character:C

    iget-object v1, p0, Lcom/airbnb/lottie/model/FontCharacter;->fontFamily:Ljava/lang/String;

    iget-object v2, p0, Lcom/airbnb/lottie/model/FontCharacter;->style:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/airbnb/lottie/model/FontCharacter;->hashFor(CLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method
