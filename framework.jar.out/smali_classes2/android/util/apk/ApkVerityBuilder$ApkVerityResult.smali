.class Landroid/util/apk/ApkVerityBuilder$ApkVerityResult;
.super Ljava/lang/Object;
.source "ApkVerityBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/apk/ApkVerityBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ApkVerityResult"
.end annotation


# instance fields
.field public final fsverityData:Ljava/nio/ByteBuffer;

.field public final rootHash:[B


# direct methods
.method constructor <init>(Ljava/nio/ByteBuffer;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/util/apk/ApkVerityBuilder$ApkVerityResult;->fsverityData:Ljava/nio/ByteBuffer;

    iput-object p2, p0, Landroid/util/apk/ApkVerityBuilder$ApkVerityResult;->rootHash:[B

    return-void
.end method
