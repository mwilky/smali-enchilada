.class public Lcom/oneplus/server/ColorManager$ColorBalance;
.super Ljava/lang/Object;
.source "ColorManager.java"

# interfaces
.implements Lcom/oneplus/oimc/IOPFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/server/ColorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ColorBalance"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ColorBalance"


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/oneplus/server/ColorManager;


# direct methods
.method public constructor <init>(Lcom/oneplus/server/ColorManager;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/server/ColorManager;
    .param p2, "context"    # Landroid/content/Context;

    .line 134
    iput-object p1, p0, Lcom/oneplus/server/ColorManager$ColorBalance;->this$0:Lcom/oneplus/server/ColorManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    iput-object p2, p0, Lcom/oneplus/server/ColorManager$ColorBalance;->mContext:Landroid/content/Context;

    .line 136
    return-void
.end method


# virtual methods
.method public config(Ljava/lang/Object;)I
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 201
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    .line 202
    .local v0, "string":Ljava/lang/String;
    const-string v1, "ColorBalance"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ColorBlance config...string = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    const/4 v1, 0x0

    return v1
.end method

.method public start(Ljava/lang/Object;)I
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 141
    const-string v0, "ColorBalance"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ColorBlance start... mCurrentActivated="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/server/ColorManager$ColorBalance;->this$0:Lcom/oneplus/server/ColorManager;

    iget v2, v2, Lcom/oneplus/server/ColorManager;->mCurrentActivated:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 143
    iget-object v1, p0, Lcom/oneplus/server/ColorManager$ColorBalance;->this$0:Lcom/oneplus/server/ColorManager;

    move-object v2, p1

    check-cast v2, Ljava/lang/String;

    iput-object v2, v1, Lcom/oneplus/server/ColorManager;->mSwitch:Ljava/lang/String;

    .line 144
    const-string v1, "ColorBalance"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  start string="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oneplus/server/ColorManager$ColorBalance;->this$0:Lcom/oneplus/server/ColorManager;

    iget-object v3, v3, Lcom/oneplus/server/ColorManager;->mSwitch:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object v1, p0, Lcom/oneplus/server/ColorManager$ColorBalance;->this$0:Lcom/oneplus/server/ColorManager;

    iget-object v1, v1, Lcom/oneplus/server/ColorManager;->mSwitch:Ljava/lang/String;

    const-string v2, "fast"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 146
    iget-object v1, p0, Lcom/oneplus/server/ColorManager$ColorBalance;->this$0:Lcom/oneplus/server/ColorManager;

    iput v0, v1, Lcom/oneplus/server/ColorManager;->mCurrentActivated:I

    .line 147
    return v0

    .line 150
    :cond_0
    const-string v1, "ColorBalance"

    const-string v2, "  start ...obj is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :cond_1
    iget-object v1, p0, Lcom/oneplus/server/ColorManager$ColorBalance;->this$0:Lcom/oneplus/server/ColorManager;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/oneplus/server/ColorManager;->mCBActivated:Z

    .line 153
    iget-object v1, p0, Lcom/oneplus/server/ColorManager$ColorBalance;->this$0:Lcom/oneplus/server/ColorManager;

    iget v1, v1, Lcom/oneplus/server/ColorManager;->mCurrentActivated:I

    if-nez v1, :cond_2

    .line 154
    iget-object v1, p0, Lcom/oneplus/server/ColorManager$ColorBalance;->this$0:Lcom/oneplus/server/ColorManager;

    invoke-static {v1}, Lcom/oneplus/server/ColorManager;->access$000(Lcom/oneplus/server/ColorManager;)Lcom/oneplus/display/ColorBalanceManager;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 155
    iget-object v1, p0, Lcom/oneplus/server/ColorManager$ColorBalance;->this$0:Lcom/oneplus/server/ColorManager;

    invoke-static {v1}, Lcom/oneplus/server/ColorManager;->access$000(Lcom/oneplus/server/ColorManager;)Lcom/oneplus/display/ColorBalanceManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/oneplus/display/ColorBalanceManager;->setColorBalanceActivated(I)V

    goto :goto_0

    .line 156
    :cond_2
    iget-object v1, p0, Lcom/oneplus/server/ColorManager$ColorBalance;->this$0:Lcom/oneplus/server/ColorManager;

    iget v1, v1, Lcom/oneplus/server/ColorManager;->mCurrentActivated:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_3

    .line 157
    iget-object v1, p0, Lcom/oneplus/server/ColorManager$ColorBalance;->this$0:Lcom/oneplus/server/ColorManager;

    invoke-static {v1}, Lcom/oneplus/server/ColorManager;->access$000(Lcom/oneplus/server/ColorManager;)Lcom/oneplus/display/ColorBalanceManager;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 158
    iget-object v1, p0, Lcom/oneplus/server/ColorManager$ColorBalance;->this$0:Lcom/oneplus/server/ColorManager;

    invoke-static {v1}, Lcom/oneplus/server/ColorManager;->access$000(Lcom/oneplus/server/ColorManager;)Lcom/oneplus/display/ColorBalanceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/display/ColorBalanceManager;->GrayColor2ColorBalance()V

    .line 161
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/oneplus/server/ColorManager$ColorBalance;->this$0:Lcom/oneplus/server/ColorManager;

    iput v2, v1, Lcom/oneplus/server/ColorManager;->mCurrentActivated:I

    .line 162
    return v0
.end method

.method public stop(Ljava/lang/Object;)I
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 168
    const-string v0, "ColorBalance"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ColorBlance stop... mCBActivated="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/server/ColorManager$ColorBalance;->this$0:Lcom/oneplus/server/ColorManager;

    iget-boolean v2, v2, Lcom/oneplus/server/ColorManager;->mCBActivated:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget-object v0, p0, Lcom/oneplus/server/ColorManager$ColorBalance;->this$0:Lcom/oneplus/server/ColorManager;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/oneplus/server/ColorManager;->mCBActivated:Z

    .line 170
    if-eqz p1, :cond_1

    .line 171
    iget-object v0, p0, Lcom/oneplus/server/ColorManager$ColorBalance;->this$0:Lcom/oneplus/server/ColorManager;

    move-object v2, p1

    check-cast v2, Ljava/lang/String;

    iput-object v2, v0, Lcom/oneplus/server/ColorManager;->mSwitch:Ljava/lang/String;

    .line 172
    const-string v0, "ColorBalance"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  stop string="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oneplus/server/ColorManager$ColorBalance;->this$0:Lcom/oneplus/server/ColorManager;

    iget-object v3, v3, Lcom/oneplus/server/ColorManager;->mSwitch:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget-object v0, p0, Lcom/oneplus/server/ColorManager$ColorBalance;->this$0:Lcom/oneplus/server/ColorManager;

    iget-object v0, v0, Lcom/oneplus/server/ColorManager;->mSwitch:Ljava/lang/String;

    const-string v2, "fast"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 174
    iget-object v0, p0, Lcom/oneplus/server/ColorManager$ColorBalance;->this$0:Lcom/oneplus/server/ColorManager;

    iput v1, v0, Lcom/oneplus/server/ColorManager;->mCurrentActivated:I

    .line 175
    iget-object v0, p0, Lcom/oneplus/server/ColorManager$ColorBalance;->this$0:Lcom/oneplus/server/ColorManager;

    invoke-static {v0}, Lcom/oneplus/server/ColorManager;->access$000(Lcom/oneplus/server/ColorManager;)Lcom/oneplus/display/ColorBalanceManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/oneplus/server/ColorManager$ColorBalance;->this$0:Lcom/oneplus/server/ColorManager;

    invoke-static {v0}, Lcom/oneplus/server/ColorManager;->access$000(Lcom/oneplus/server/ColorManager;)Lcom/oneplus/display/ColorBalanceManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/oneplus/display/ColorBalanceManager;->DisableColor(I)V

    .line 177
    :cond_0
    return v1

    .line 180
    :cond_1
    const-string v0, "ColorBalance"

    const-string v2, "  stop ...obj is null"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :cond_2
    const-string v0, "ColorBalance"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ColorBalance stop... mGCActiviated="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oneplus/server/ColorManager$ColorBalance;->this$0:Lcom/oneplus/server/ColorManager;

    iget-boolean v3, v3, Lcom/oneplus/server/ColorManager;->mGCActiviated:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mCurrentActivated="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oneplus/server/ColorManager$ColorBalance;->this$0:Lcom/oneplus/server/ColorManager;

    iget v3, v3, Lcom/oneplus/server/ColorManager;->mCurrentActivated:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object v0, p0, Lcom/oneplus/server/ColorManager$ColorBalance;->this$0:Lcom/oneplus/server/ColorManager;

    iget-boolean v0, v0, Lcom/oneplus/server/ColorManager;->mGCActiviated:Z

    if-nez v0, :cond_3

    .line 184
    iget-object v0, p0, Lcom/oneplus/server/ColorManager$ColorBalance;->this$0:Lcom/oneplus/server/ColorManager;

    iput v1, v0, Lcom/oneplus/server/ColorManager;->mCurrentActivated:I

    .line 185
    iget-object v0, p0, Lcom/oneplus/server/ColorManager$ColorBalance;->this$0:Lcom/oneplus/server/ColorManager;

    invoke-static {v0}, Lcom/oneplus/server/ColorManager;->access$000(Lcom/oneplus/server/ColorManager;)Lcom/oneplus/display/ColorBalanceManager;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 186
    iget-object v0, p0, Lcom/oneplus/server/ColorManager$ColorBalance;->this$0:Lcom/oneplus/server/ColorManager;

    invoke-static {v0}, Lcom/oneplus/server/ColorManager;->access$000(Lcom/oneplus/server/ColorManager;)Lcom/oneplus/display/ColorBalanceManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/oneplus/display/ColorBalanceManager;->setColorBalanceActivated(I)V

    goto :goto_0

    .line 188
    :cond_3
    iget-object v0, p0, Lcom/oneplus/server/ColorManager$ColorBalance;->this$0:Lcom/oneplus/server/ColorManager;

    iget v0, v0, Lcom/oneplus/server/ColorManager;->mCurrentActivated:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    .line 189
    iget-object v0, p0, Lcom/oneplus/server/ColorManager$ColorBalance;->this$0:Lcom/oneplus/server/ColorManager;

    invoke-static {v0}, Lcom/oneplus/server/ColorManager;->access$000(Lcom/oneplus/server/ColorManager;)Lcom/oneplus/display/ColorBalanceManager;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 190
    iget-object v0, p0, Lcom/oneplus/server/ColorManager$ColorBalance;->this$0:Lcom/oneplus/server/ColorManager;

    const/4 v2, 0x2

    iput v2, v0, Lcom/oneplus/server/ColorManager;->mCurrentActivated:I

    .line 191
    iget-object v0, p0, Lcom/oneplus/server/ColorManager$ColorBalance;->this$0:Lcom/oneplus/server/ColorManager;

    invoke-static {v0}, Lcom/oneplus/server/ColorManager;->access$000(Lcom/oneplus/server/ColorManager;)Lcom/oneplus/display/ColorBalanceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/display/ColorBalanceManager;->ColorBalance2GrayColor()V

    .line 195
    :cond_4
    :goto_0
    return v1
.end method
