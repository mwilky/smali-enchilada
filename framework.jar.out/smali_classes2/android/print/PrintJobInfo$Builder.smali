.class public final Landroid/print/PrintJobInfo$Builder;
.super Ljava/lang/Object;
.source "PrintJobInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/print/PrintJobInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final mPrototype:Landroid/print/PrintJobInfo;


# direct methods
.method public constructor <init>(Landroid/print/PrintJobInfo;)V
    .locals 1
    .param p1, "prototype"    # Landroid/print/PrintJobInfo;

    .line 779
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 780
    if-eqz p1, :cond_0

    .line 781
    new-instance v0, Landroid/print/PrintJobInfo;

    invoke-direct {v0, p1}, Landroid/print/PrintJobInfo;-><init>(Landroid/print/PrintJobInfo;)V

    goto :goto_0

    .line 782
    :cond_0
    new-instance v0, Landroid/print/PrintJobInfo;

    invoke-direct {v0}, Landroid/print/PrintJobInfo;-><init>()V

    :goto_0
    iput-object v0, p0, Landroid/print/PrintJobInfo$Builder;->mPrototype:Landroid/print/PrintJobInfo;

    .line 783
    return-void
.end method


# virtual methods
.method public build()Landroid/print/PrintJobInfo;
    .locals 1

    .line 868
    iget-object v0, p0, Landroid/print/PrintJobInfo$Builder;->mPrototype:Landroid/print/PrintJobInfo;

    return-object v0
.end method

.method public putAdvancedOption(Ljava/lang/String;I)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 856
    iget-object v0, p0, Landroid/print/PrintJobInfo$Builder;->mPrototype:Landroid/print/PrintJobInfo;

    invoke-static {v0}, Landroid/print/PrintJobInfo;->access$500(Landroid/print/PrintJobInfo;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    .line 857
    iget-object v0, p0, Landroid/print/PrintJobInfo$Builder;->mPrototype:Landroid/print/PrintJobInfo;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-static {v0, v1}, Landroid/print/PrintJobInfo;->access$502(Landroid/print/PrintJobInfo;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 859
    :cond_0
    iget-object v0, p0, Landroid/print/PrintJobInfo$Builder;->mPrototype:Landroid/print/PrintJobInfo;

    invoke-static {v0}, Landroid/print/PrintJobInfo;->access$500(Landroid/print/PrintJobInfo;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 860
    return-void
.end method

.method public putAdvancedOption(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 841
    const-string v0, "key cannot be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 843
    iget-object v0, p0, Landroid/print/PrintJobInfo$Builder;->mPrototype:Landroid/print/PrintJobInfo;

    invoke-static {v0}, Landroid/print/PrintJobInfo;->access$500(Landroid/print/PrintJobInfo;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    .line 844
    iget-object v0, p0, Landroid/print/PrintJobInfo$Builder;->mPrototype:Landroid/print/PrintJobInfo;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-static {v0, v1}, Landroid/print/PrintJobInfo;->access$502(Landroid/print/PrintJobInfo;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 846
    :cond_0
    iget-object v0, p0, Landroid/print/PrintJobInfo$Builder;->mPrototype:Landroid/print/PrintJobInfo;

    invoke-static {v0}, Landroid/print/PrintJobInfo;->access$500(Landroid/print/PrintJobInfo;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 847
    return-void
.end method

.method public setAttributes(Landroid/print/PrintAttributes;)V
    .locals 1
    .param p1, "attributes"    # Landroid/print/PrintAttributes;

    .line 800
    iget-object v0, p0, Landroid/print/PrintJobInfo$Builder;->mPrototype:Landroid/print/PrintJobInfo;

    invoke-static {v0, p1}, Landroid/print/PrintJobInfo;->access$102(Landroid/print/PrintJobInfo;Landroid/print/PrintAttributes;)Landroid/print/PrintAttributes;

    .line 801
    return-void
.end method

.method public setCopies(I)V
    .locals 1
    .param p1, "copies"    # I

    .line 791
    iget-object v0, p0, Landroid/print/PrintJobInfo$Builder;->mPrototype:Landroid/print/PrintJobInfo;

    invoke-static {v0, p1}, Landroid/print/PrintJobInfo;->access$002(Landroid/print/PrintJobInfo;I)I

    .line 792
    return-void
.end method

.method public setPages([Landroid/print/PageRange;)V
    .locals 1
    .param p1, "pages"    # [Landroid/print/PageRange;

    .line 809
    iget-object v0, p0, Landroid/print/PrintJobInfo$Builder;->mPrototype:Landroid/print/PrintJobInfo;

    invoke-static {v0, p1}, Landroid/print/PrintJobInfo;->access$202(Landroid/print/PrintJobInfo;[Landroid/print/PageRange;)[Landroid/print/PageRange;

    .line 810
    return-void
.end method

.method public setProgress(F)V
    .locals 3
    .param p1, "progress"    # F

    .line 819
    const-string/jumbo v0, "progress"

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {p1, v1, v2, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(FFFLjava/lang/String;)F

    .line 821
    iget-object v0, p0, Landroid/print/PrintJobInfo$Builder;->mPrototype:Landroid/print/PrintJobInfo;

    invoke-static {v0, p1}, Landroid/print/PrintJobInfo;->access$302(Landroid/print/PrintJobInfo;F)F

    .line 822
    return-void
.end method

.method public setStatus(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "status"    # Ljava/lang/CharSequence;

    .line 831
    iget-object v0, p0, Landroid/print/PrintJobInfo$Builder;->mPrototype:Landroid/print/PrintJobInfo;

    invoke-static {v0, p1}, Landroid/print/PrintJobInfo;->access$402(Landroid/print/PrintJobInfo;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 832
    return-void
.end method
