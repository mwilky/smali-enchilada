.class public Lcom/android/internal/util/dump/DumpUtils;
.super Ljava/lang/Object;
.source "DumpUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static writeComponentName(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/content/ComponentName;)V
    .locals 6

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v0

    const-string v2, "package_name"

    invoke-virtual {p4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-wide v4, 0x10900000001L

    invoke-virtual {p0, v2, v4, v5, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    const-string v2, "class_name"

    invoke-virtual {p4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    const-wide v4, 0x10900000002L

    invoke-virtual {p0, v2, v4, v5, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    return-void
.end method

.method public static writeStringIfNotNull(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLjava/lang/String;)V
    .locals 0

    if-eqz p4, :cond_0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    :cond_0
    return-void
.end method
