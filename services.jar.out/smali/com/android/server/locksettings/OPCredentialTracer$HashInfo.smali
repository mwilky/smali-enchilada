.class Lcom/android/server/locksettings/OPCredentialTracer$HashInfo;
.super Ljava/lang/Object;
.source "OPCredentialTracer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/locksettings/OPCredentialTracer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "HashInfo"
.end annotation


# instance fields
.field date:Ljava/lang/String;

.field hash:Ljava/lang/String;

.field result:Ljava/lang/String;

.field securityType:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "info"    # Ljava/lang/String;

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 152
    .local v0, "data":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    .line 153
    const/4 v1, 0x0

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/android/server/locksettings/OPCredentialTracer$HashInfo;->hash:Ljava/lang/String;

    .line 154
    const/4 v1, 0x1

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/android/server/locksettings/OPCredentialTracer$HashInfo;->securityType:Ljava/lang/String;

    .line 155
    const/4 v1, 0x2

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/android/server/locksettings/OPCredentialTracer$HashInfo;->result:Ljava/lang/String;

    .line 156
    const/4 v1, 0x3

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/android/server/locksettings/OPCredentialTracer$HashInfo;->date:Ljava/lang/String;

    .line 158
    :cond_0
    return-void
.end method


# virtual methods
.method public getDate()Ljava/util/Date;
    .locals 2

    .line 162
    :try_start_0
    invoke-static {}, Lcom/android/server/locksettings/OPCredentialTracer;->access$000()Ljava/text/SimpleDateFormat;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/locksettings/OPCredentialTracer$HashInfo;->date:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 163
    :catch_0
    move-exception v0

    .line 164
    .local v0, "e":Ljava/text/ParseException;
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    .line 166
    .end local v0    # "e":Ljava/text/ParseException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public getResult()Z
    .locals 2

    .line 170
    iget-object v0, p0, Lcom/android/server/locksettings/OPCredentialTracer$HashInfo;->result:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 171
    .local v0, "out":Z
    iget-object v1, p0, Lcom/android/server/locksettings/OPCredentialTracer$HashInfo;->result:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 175
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 176
    .local v0, "info":Ljava/lang/StringBuffer;
    iget-object v1, p0, Lcom/android/server/locksettings/OPCredentialTracer$HashInfo;->hash:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/android/server/locksettings/OPCredentialTracer$HashInfo;->securityType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/android/server/locksettings/OPCredentialTracer$HashInfo;->result:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/android/server/locksettings/OPCredentialTracer$HashInfo;->date:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 177
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
