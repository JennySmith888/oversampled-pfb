<?xml version="1.0" encoding="UTF-8" standalone="yes" ?>
<!DOCTYPE boost_serialization>
<boost_serialization signature="serialization::archive" version="15">
  <syndb class_id="0" tracking_level="0" version="0">
    <userIPLatency>-1</userIPLatency>
    <userIPName/>
    <cdfg class_id="1" tracking_level="1" version="0" object_id="_0">
      <name>os_pfb</name>
      <ret_bitwidth>0</ret_bitwidth>
      <ports class_id="2" tracking_level="0" version="0">
        <count>4</count>
        <item_version>0</item_version>
        <item class_id="3" tracking_level="1" version="0" object_id="_1">
          <Value class_id="4" tracking_level="0" version="0">
            <Obj class_id="5" tracking_level="0" version="0">
              <type>1</type>
              <id>1</id>
              <name>in_r</name>
              <fileName/>
              <fileDirectory/>
              <lineNumber>0</lineNumber>
              <contextFuncName/>
              <inlineStackInfo class_id="6" tracking_level="0" version="0">
                <count>0</count>
                <item_version>0</item_version>
              </inlineStackInfo>
              <originalName>in</originalName>
              <rtlName/>
              <coreName/>
            </Obj>
            <bitwidth>64</bitwidth>
          </Value>
          <direction>0</direction>
          <if_type>0</if_type>
          <array_size>0</array_size>
          <bit_vecs class_id="7" tracking_level="0" version="0">
            <count>0</count>
            <item_version>0</item_version>
          </bit_vecs>
        </item>
        <item class_id_reference="3" object_id="_2">
          <Value>
            <Obj>
              <type>1</type>
              <id>2</id>
              <name>out_data</name>
              <fileName/>
              <fileDirectory/>
              <lineNumber>0</lineNumber>
              <contextFuncName/>
              <inlineStackInfo>
                <count>0</count>
                <item_version>0</item_version>
              </inlineStackInfo>
              <originalName>out.data</originalName>
              <rtlName/>
              <coreName/>
            </Obj>
            <bitwidth>64</bitwidth>
          </Value>
          <direction>1</direction>
          <if_type>0</if_type>
          <array_size>0</array_size>
          <bit_vecs>
            <count>0</count>
            <item_version>0</item_version>
          </bit_vecs>
        </item>
        <item class_id_reference="3" object_id="_3">
          <Value>
            <Obj>
              <type>1</type>
              <id>3</id>
              <name>out_last_V</name>
              <fileName/>
              <fileDirectory/>
              <lineNumber>0</lineNumber>
              <contextFuncName/>
              <inlineStackInfo>
                <count>0</count>
                <item_version>0</item_version>
              </inlineStackInfo>
              <originalName>out.last.V</originalName>
              <rtlName/>
              <coreName/>
            </Obj>
            <bitwidth>1</bitwidth>
          </Value>
          <direction>1</direction>
          <if_type>0</if_type>
          <array_size>0</array_size>
          <bit_vecs>
            <count>0</count>
            <item_version>0</item_version>
          </bit_vecs>
        </item>
        <item class_id_reference="3" object_id="_4">
          <Value>
            <Obj>
              <type>1</type>
              <id>4</id>
              <name>ovflow</name>
              <fileName/>
              <fileDirectory/>
              <lineNumber>0</lineNumber>
              <contextFuncName/>
              <inlineStackInfo>
                <count>0</count>
                <item_version>0</item_version>
              </inlineStackInfo>
              <originalName>ovflow</originalName>
              <rtlName/>
              <coreName/>
            </Obj>
            <bitwidth>8</bitwidth>
          </Value>
          <direction>1</direction>
          <if_type>0</if_type>
          <array_size>0</array_size>
          <bit_vecs>
            <count>0</count>
            <item_version>0</item_version>
          </bit_vecs>
        </item>
      </ports>
      <nodes class_id="8" tracking_level="0" version="0">
        <count>8</count>
        <item_version>0</item_version>
        <item class_id="9" tracking_level="1" version="0" object_id="_5">
          <Value>
            <Obj>
              <type>0</type>
              <id>10</id>
              <name>ifft_status_data_V</name>
              <fileName>os_pfb.cpp</fileName>
              <fileDirectory>..</fileDirectory>
              <lineNumber>93</lineNumber>
              <contextFuncName>os_pfb</contextFuncName>
              <inlineStackInfo>
                <count>1</count>
                <item_version>0</item_version>
                <item class_id="10" tracking_level="0" version="0">
                  <first>/home/jpsmith/git-repos/oversampled-pfb/hls</first>
                  <second class_id="11" tracking_level="0" version="0">
                    <count>1</count>
                    <item_version>0</item_version>
                    <item class_id="12" tracking_level="0" version="0">
                      <first class_id="13" tracking_level="0" version="0">
                        <first>os_pfb.cpp</first>
                        <second>os_pfb</second>
                      </first>
                      <second>93</second>
                    </item>
                  </second>
                </item>
              </inlineStackInfo>
              <originalName>ifft_status.data.V</originalName>
              <rtlName>ifft_status_data_V_U</rtlName>
              <coreName>FIFO</coreName>
            </Obj>
            <bitwidth>8</bitwidth>
          </Value>
          <oprand_edges>
            <count>1</count>
            <item_version>0</item_version>
            <item>42</item>
          </oprand_edges>
          <opcode>alloca</opcode>
          <m_Display>0</m_Display>
          <m_isOnCriticalPath>0</m_isOnCriticalPath>
          <m_isLCDNode>0</m_isLCDNode>
          <m_isStartOfPath>0</m_isStartOfPath>
          <m_delay>0.00</m_delay>
          <m_topoIndex>1</m_topoIndex>
          <m_clusterGroupNumber>-1</m_clusterGroupNumber>
        </item>
        <item class_id_reference="9" object_id="_6">
          <Value>
            <Obj>
              <type>0</type>
              <id>11</id>
              <name>ifft_config_data_V</name>
              <fileName>os_pfb.cpp</fileName>
              <fileDirectory>..</fileDirectory>
              <lineNumber>92</lineNumber>
              <contextFuncName>os_pfb</contextFuncName>
              <inlineStackInfo>
                <count>1</count>
                <item_version>0</item_version>
                <item>
                  <first>/home/jpsmith/git-repos/oversampled-pfb/hls</first>
                  <second>
                    <count>1</count>
                    <item_version>0</item_version>
                    <item>
                      <first>
                        <first>os_pfb.cpp</first>
                        <second>os_pfb</second>
                      </first>
                      <second>92</second>
                    </item>
                  </second>
                </item>
              </inlineStackInfo>
              <originalName>ifft_config.data.V</originalName>
              <rtlName>ifft_config_data_V_U</rtlName>
              <coreName>FIFO</coreName>
            </Obj>
            <bitwidth>8</bitwidth>
          </Value>
          <oprand_edges>
            <count>1</count>
            <item_version>0</item_version>
            <item>43</item>
          </oprand_edges>
          <opcode>alloca</opcode>
          <m_Display>0</m_Display>
          <m_isOnCriticalPath>0</m_isOnCriticalPath>
          <m_isLCDNode>0</m_isLCDNode>
          <m_isStartOfPath>0</m_isStartOfPath>
          <m_delay>0.00</m_delay>
          <m_topoIndex>2</m_topoIndex>
          <m_clusterGroupNumber>-1</m_clusterGroupNumber>
        </item>
        <item class_id_reference="9" object_id="_7">
          <Value>
            <Obj>
              <type>0</type>
              <id>15</id>
              <name>ifft_out_channel</name>
              <fileName/>
              <fileDirectory/>
              <lineNumber>0</lineNumber>
              <contextFuncName/>
              <inlineStackInfo>
                <count>0</count>
                <item_version>0</item_version>
              </inlineStackInfo>
              <originalName/>
              <rtlName>ifft_out_channel_U</rtlName>
              <coreName>FIFO</coreName>
            </Obj>
            <bitwidth>64</bitwidth>
          </Value>
          <oprand_edges>
            <count>1</count>
            <item_version>0</item_version>
            <item>44</item>
          </oprand_edges>
          <opcode>alloca</opcode>
          <m_Display>0</m_Display>
          <m_isOnCriticalPath>0</m_isOnCriticalPath>
          <m_isLCDNode>0</m_isLCDNode>
          <m_isStartOfPath>0</m_isStartOfPath>
          <m_delay>0.00</m_delay>
          <m_topoIndex>3</m_topoIndex>
          <m_clusterGroupNumber>-1</m_clusterGroupNumber>
        </item>
        <item class_id_reference="9" object_id="_8">
          <Value>
            <Obj>
              <type>0</type>
              <id>18</id>
              <name>filter_out_channel</name>
              <fileName/>
              <fileDirectory/>
              <lineNumber>0</lineNumber>
              <contextFuncName/>
              <inlineStackInfo>
                <count>0</count>
                <item_version>0</item_version>
              </inlineStackInfo>
              <originalName/>
              <rtlName>filter_out_channel_U</rtlName>
              <coreName>FIFO</coreName>
            </Obj>
            <bitwidth>64</bitwidth>
          </Value>
          <oprand_edges>
            <count>1</count>
            <item_version>0</item_version>
            <item>45</item>
          </oprand_edges>
          <opcode>alloca</opcode>
          <m_Display>0</m_Display>
          <m_isOnCriticalPath>0</m_isOnCriticalPath>
          <m_isLCDNode>0</m_isLCDNode>
          <m_isStartOfPath>0</m_isStartOfPath>
          <m_delay>0.00</m_delay>
          <m_topoIndex>4</m_topoIndex>
          <m_clusterGroupNumber>-1</m_clusterGroupNumber>
        </item>
        <item class_id_reference="9" object_id="_9">
          <Value>
            <Obj>
              <type>0</type>
              <id>28</id>
              <name/>
              <fileName/>
              <fileDirectory/>
              <lineNumber>0</lineNumber>
              <contextFuncName/>
              <inlineStackInfo>
                <count>0</count>
                <item_version>0</item_version>
              </inlineStackInfo>
              <originalName/>
              <rtlName>polyphase_filter_U0</rtlName>
              <coreName/>
            </Obj>
            <bitwidth>0</bitwidth>
          </Value>
          <oprand_edges>
            <count>9</count>
            <item_version>0</item_version>
            <item>47</item>
            <item>48</item>
            <item>49</item>
            <item>50</item>
            <item>64</item>
            <item>65</item>
            <item>66</item>
            <item>67</item>
            <item>68</item>
          </oprand_edges>
          <opcode>call</opcode>
          <m_Display>0</m_Display>
          <m_isOnCriticalPath>0</m_isOnCriticalPath>
          <m_isLCDNode>0</m_isLCDNode>
          <m_isStartOfPath>0</m_isStartOfPath>
          <m_delay>0.00</m_delay>
          <m_topoIndex>5</m_topoIndex>
          <m_clusterGroupNumber>-1</m_clusterGroupNumber>
        </item>
        <item class_id_reference="9" object_id="_10">
          <Value>
            <Obj>
              <type>0</type>
              <id>33</id>
              <name/>
              <fileName/>
              <fileDirectory/>
              <lineNumber>0</lineNumber>
              <contextFuncName/>
              <inlineStackInfo>
                <count>0</count>
                <item_version>0</item_version>
              </inlineStackInfo>
              <originalName/>
              <rtlName>fft_os_pfb_config_U0</rtlName>
              <coreName/>
            </Obj>
            <bitwidth>0</bitwidth>
          </Value>
          <oprand_edges>
            <count>7</count>
            <item_version>0</item_version>
            <item>52</item>
            <item>53</item>
            <item>54</item>
            <item>55</item>
            <item>56</item>
            <item>374</item>
            <item>375</item>
          </oprand_edges>
          <opcode>call</opcode>
          <m_Display>0</m_Display>
          <m_isOnCriticalPath>0</m_isOnCriticalPath>
          <m_isLCDNode>0</m_isLCDNode>
          <m_isStartOfPath>0</m_isStartOfPath>
          <m_delay>8.75</m_delay>
          <m_topoIndex>6</m_topoIndex>
          <m_clusterGroupNumber>-1</m_clusterGroupNumber>
        </item>
        <item class_id_reference="9" object_id="_11">
          <Value>
            <Obj>
              <type>0</type>
              <id>38</id>
              <name/>
              <fileName/>
              <fileDirectory/>
              <lineNumber>0</lineNumber>
              <contextFuncName/>
              <inlineStackInfo>
                <count>0</count>
                <item_version>0</item_version>
              </inlineStackInfo>
              <originalName/>
              <rtlName>be_U0</rtlName>
              <coreName/>
            </Obj>
            <bitwidth>0</bitwidth>
          </Value>
          <oprand_edges>
            <count>8</count>
            <item_version>0</item_version>
            <item>58</item>
            <item>59</item>
            <item>60</item>
            <item>61</item>
            <item>62</item>
            <item>63</item>
            <item>373</item>
            <item>376</item>
          </oprand_edges>
          <opcode>call</opcode>
          <m_Display>0</m_Display>
          <m_isOnCriticalPath>0</m_isOnCriticalPath>
          <m_isLCDNode>0</m_isLCDNode>
          <m_isStartOfPath>0</m_isStartOfPath>
          <m_delay>0.00</m_delay>
          <m_topoIndex>7</m_topoIndex>
          <m_clusterGroupNumber>-1</m_clusterGroupNumber>
        </item>
        <item class_id_reference="9" object_id="_12">
          <Value>
            <Obj>
              <type>0</type>
              <id>39</id>
              <name/>
              <fileName>os_pfb.cpp</fileName>
              <fileDirectory>..</fileDirectory>
              <lineNumber>104</lineNumber>
              <contextFuncName>os_pfb</contextFuncName>
              <inlineStackInfo>
                <count>1</count>
                <item_version>0</item_version>
                <item>
                  <first>/home/jpsmith/git-repos/oversampled-pfb/hls</first>
                  <second>
                    <count>1</count>
                    <item_version>0</item_version>
                    <item>
                      <first>
                        <first>os_pfb.cpp</first>
                        <second>os_pfb</second>
                      </first>
                      <second>104</second>
                    </item>
                  </second>
                </item>
              </inlineStackInfo>
              <originalName/>
              <rtlName/>
              <coreName/>
            </Obj>
            <bitwidth>0</bitwidth>
          </Value>
          <oprand_edges>
            <count>0</count>
            <item_version>0</item_version>
          </oprand_edges>
          <opcode>ret</opcode>
          <m_Display>0</m_Display>
          <m_isOnCriticalPath>0</m_isOnCriticalPath>
          <m_isLCDNode>0</m_isLCDNode>
          <m_isStartOfPath>0</m_isStartOfPath>
          <m_delay>0.00</m_delay>
          <m_topoIndex>8</m_topoIndex>
          <m_clusterGroupNumber>-1</m_clusterGroupNumber>
        </item>
      </nodes>
      <consts class_id="15" tracking_level="0" version="0">
        <count>4</count>
        <item_version>0</item_version>
        <item class_id="16" tracking_level="1" version="0" object_id="_13">
          <Value>
            <Obj>
              <type>2</type>
              <id>41</id>
              <name>empty</name>
              <fileName/>
              <fileDirectory/>
              <lineNumber>0</lineNumber>
              <contextFuncName/>
              <inlineStackInfo>
                <count>0</count>
                <item_version>0</item_version>
              </inlineStackInfo>
              <originalName/>
              <rtlName/>
              <coreName/>
            </Obj>
            <bitwidth>64</bitwidth>
          </Value>
          <const_type>0</const_type>
          <content>1</content>
        </item>
        <item class_id_reference="16" object_id="_14">
          <Value>
            <Obj>
              <type>2</type>
              <id>46</id>
              <name>polyphase_filter</name>
              <fileName/>
              <fileDirectory/>
              <lineNumber>0</lineNumber>
              <contextFuncName/>
              <inlineStackInfo>
                <count>0</count>
                <item_version>0</item_version>
              </inlineStackInfo>
              <originalName/>
              <rtlName/>
              <coreName/>
            </Obj>
            <bitwidth>0</bitwidth>
          </Value>
          <const_type>6</const_type>
          <content>&lt;constant:polyphase_filter&gt;</content>
        </item>
        <item class_id_reference="16" object_id="_15">
          <Value>
            <Obj>
              <type>2</type>
              <id>51</id>
              <name>fft_os_pfb_config_s</name>
              <fileName/>
              <fileDirectory/>
              <lineNumber>0</lineNumber>
              <contextFuncName/>
              <inlineStackInfo>
                <count>0</count>
                <item_version>0</item_version>
              </inlineStackInfo>
              <originalName/>
              <rtlName/>
              <coreName/>
            </Obj>
            <bitwidth>0</bitwidth>
          </Value>
          <const_type>6</const_type>
          <content>&lt;constant:fft&lt;os_pfb_config&gt;&gt;</content>
        </item>
        <item class_id_reference="16" object_id="_16">
          <Value>
            <Obj>
              <type>2</type>
              <id>57</id>
              <name>be</name>
              <fileName/>
              <fileDirectory/>
              <lineNumber>0</lineNumber>
              <contextFuncName/>
              <inlineStackInfo>
                <count>0</count>
                <item_version>0</item_version>
              </inlineStackInfo>
              <originalName/>
              <rtlName/>
              <coreName/>
            </Obj>
            <bitwidth>0</bitwidth>
          </Value>
          <const_type>6</const_type>
          <content>&lt;constant:be&gt;</content>
        </item>
      </consts>
      <blocks class_id="17" tracking_level="0" version="0">
        <count>1</count>
        <item_version>0</item_version>
        <item class_id="18" tracking_level="1" version="0" object_id="_17">
          <Obj>
            <type>3</type>
            <id>40</id>
            <name>os_pfb</name>
            <fileName/>
            <fileDirectory/>
            <lineNumber>0</lineNumber>
            <contextFuncName/>
            <inlineStackInfo>
              <count>0</count>
              <item_version>0</item_version>
            </inlineStackInfo>
            <originalName/>
            <rtlName/>
            <coreName/>
          </Obj>
          <node_objs>
            <count>8</count>
            <item_version>0</item_version>
            <item>10</item>
            <item>11</item>
            <item>15</item>
            <item>18</item>
            <item>28</item>
            <item>33</item>
            <item>38</item>
            <item>39</item>
          </node_objs>
        </item>
      </blocks>
      <edges class_id="19" tracking_level="0" version="0">
        <count>28</count>
        <item_version>0</item_version>
        <item class_id="20" tracking_level="1" version="0" object_id="_18">
          <id>42</id>
          <edge_type>1</edge_type>
          <source_obj>41</source_obj>
          <sink_obj>10</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_19">
          <id>43</id>
          <edge_type>1</edge_type>
          <source_obj>41</source_obj>
          <sink_obj>11</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_20">
          <id>44</id>
          <edge_type>1</edge_type>
          <source_obj>41</source_obj>
          <sink_obj>15</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_21">
          <id>45</id>
          <edge_type>1</edge_type>
          <source_obj>41</source_obj>
          <sink_obj>18</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_22">
          <id>47</id>
          <edge_type>1</edge_type>
          <source_obj>46</source_obj>
          <sink_obj>28</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_23">
          <id>48</id>
          <edge_type>1</edge_type>
          <source_obj>1</source_obj>
          <sink_obj>28</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_24">
          <id>49</id>
          <edge_type>1</edge_type>
          <source_obj>18</source_obj>
          <sink_obj>28</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_25">
          <id>50</id>
          <edge_type>1</edge_type>
          <source_obj>11</source_obj>
          <sink_obj>28</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_26">
          <id>52</id>
          <edge_type>1</edge_type>
          <source_obj>51</source_obj>
          <sink_obj>33</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_27">
          <id>53</id>
          <edge_type>1</edge_type>
          <source_obj>18</source_obj>
          <sink_obj>33</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_28">
          <id>54</id>
          <edge_type>1</edge_type>
          <source_obj>15</source_obj>
          <sink_obj>33</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_29">
          <id>55</id>
          <edge_type>1</edge_type>
          <source_obj>10</source_obj>
          <sink_obj>33</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_30">
          <id>56</id>
          <edge_type>1</edge_type>
          <source_obj>11</source_obj>
          <sink_obj>33</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_31">
          <id>58</id>
          <edge_type>1</edge_type>
          <source_obj>57</source_obj>
          <sink_obj>38</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_32">
          <id>59</id>
          <edge_type>1</edge_type>
          <source_obj>15</source_obj>
          <sink_obj>38</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_33">
          <id>60</id>
          <edge_type>1</edge_type>
          <source_obj>2</source_obj>
          <sink_obj>38</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_34">
          <id>61</id>
          <edge_type>1</edge_type>
          <source_obj>3</source_obj>
          <sink_obj>38</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_35">
          <id>62</id>
          <edge_type>1</edge_type>
          <source_obj>10</source_obj>
          <sink_obj>38</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_36">
          <id>63</id>
          <edge_type>1</edge_type>
          <source_obj>4</source_obj>
          <sink_obj>38</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_37">
          <id>64</id>
          <edge_type>1</edge_type>
          <source_obj>5</source_obj>
          <sink_obj>28</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_38">
          <id>65</id>
          <edge_type>1</edge_type>
          <source_obj>6</source_obj>
          <sink_obj>28</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_39">
          <id>66</id>
          <edge_type>1</edge_type>
          <source_obj>7</source_obj>
          <sink_obj>28</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_40">
          <id>67</id>
          <edge_type>1</edge_type>
          <source_obj>8</source_obj>
          <sink_obj>28</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_41">
          <id>68</id>
          <edge_type>1</edge_type>
          <source_obj>9</source_obj>
          <sink_obj>28</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_42">
          <id>373</id>
          <edge_type>4</edge_type>
          <source_obj>33</source_obj>
          <sink_obj>38</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_43">
          <id>374</id>
          <edge_type>4</edge_type>
          <source_obj>28</source_obj>
          <sink_obj>33</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_44">
          <id>375</id>
          <edge_type>4</edge_type>
          <source_obj>28</source_obj>
          <sink_obj>33</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_45">
          <id>376</id>
          <edge_type>4</edge_type>
          <source_obj>33</source_obj>
          <sink_obj>38</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
      </edges>
    </cdfg>
    <cdfg_regions class_id="21" tracking_level="0" version="0">
      <count>1</count>
      <item_version>0</item_version>
      <item class_id="22" tracking_level="1" version="0" object_id="_46">
        <mId>1</mId>
        <mTag>os_pfb</mTag>
        <mType>0</mType>
        <sub_regions>
          <count>0</count>
          <item_version>0</item_version>
        </sub_regions>
        <basic_blocks>
          <count>1</count>
          <item_version>0</item_version>
          <item>40</item>
        </basic_blocks>
        <mII>-1</mII>
        <mDepth>-1</mDepth>
        <mMinTripCount>-1</mMinTripCount>
        <mMaxTripCount>-1</mMaxTripCount>
        <mMinLatency>3443</mMinLatency>
        <mMaxLatency>3443</mMaxLatency>
        <mIsDfPipe>1</mIsDfPipe>
        <mDfPipe class_id="23" tracking_level="1" version="0" object_id="_47">
          <port_list class_id="24" tracking_level="0" version="0">
            <count>0</count>
            <item_version>0</item_version>
          </port_list>
          <process_list class_id="25" tracking_level="0" version="0">
            <count>3</count>
            <item_version>0</item_version>
            <item class_id="26" tracking_level="1" version="0" object_id="_48">
              <type>0</type>
              <name>polyphase_filter_U0</name>
              <ssdmobj_id>28</ssdmobj_id>
              <pins class_id="27" tracking_level="0" version="0">
                <count>8</count>
                <item_version>0</item_version>
                <item class_id="28" tracking_level="1" version="0" object_id="_49">
                  <port class_id="29" tracking_level="1" version="0" object_id="_50">
                    <name>in</name>
                    <dir>3</dir>
                    <type>0</type>
                  </port>
                  <inst class_id="30" tracking_level="1" version="0" object_id="_51">
                    <type>0</type>
                    <name>polyphase_filter_U0</name>
                    <ssdmobj_id>28</ssdmobj_id>
                  </inst>
                </item>
                <item class_id_reference="28" object_id="_52">
                  <port class_id_reference="29" object_id="_53">
                    <name>filter_out</name>
                    <dir>0</dir>
                    <type>1</type>
                  </port>
                  <inst class_id_reference="30" object_id_reference="_51"/>
                </item>
                <item class_id_reference="28" object_id="_54">
                  <port class_id_reference="29" object_id="_55">
                    <name>ifft_config_data_V</name>
                    <dir>0</dir>
                    <type>1</type>
                  </port>
                  <inst class_id_reference="30" object_id_reference="_51"/>
                </item>
                <item class_id_reference="28" object_id="_56">
                  <port class_id_reference="29" object_id="_57">
                    <name>filter_state_M_real</name>
                    <dir>2</dir>
                    <type>2</type>
                  </port>
                  <inst class_id_reference="30" object_id_reference="_51"/>
                </item>
                <item class_id_reference="28" object_id="_58">
                  <port class_id_reference="29" object_id="_59">
                    <name>filter_state_M_imag</name>
                    <dir>2</dir>
                    <type>2</type>
                  </port>
                  <inst class_id_reference="30" object_id_reference="_51"/>
                </item>
                <item class_id_reference="28" object_id="_60">
                  <port class_id_reference="29" object_id="_61">
                    <name>h</name>
                    <dir>2</dir>
                    <type>0</type>
                  </port>
                  <inst class_id_reference="30" object_id_reference="_51"/>
                </item>
                <item class_id_reference="28" object_id="_62">
                  <port class_id_reference="29" object_id="_63">
                    <name>state_idx</name>
                    <dir>3</dir>
                    <type>2</type>
                  </port>
                  <inst class_id_reference="30" object_id_reference="_51"/>
                </item>
                <item class_id_reference="28" object_id="_64">
                  <port class_id_reference="29" object_id="_65">
                    <name>shift_states</name>
                    <dir>2</dir>
                    <type>0</type>
                  </port>
                  <inst class_id_reference="30" object_id_reference="_51"/>
                </item>
              </pins>
            </item>
            <item class_id_reference="26" object_id="_66">
              <type>0</type>
              <name>fft_os_pfb_config_U0</name>
              <ssdmobj_id>33</ssdmobj_id>
              <pins>
                <count>4</count>
                <item_version>0</item_version>
                <item class_id_reference="28" object_id="_67">
                  <port class_id_reference="29" object_id="_68">
                    <name>xn</name>
                    <dir>0</dir>
                    <type>0</type>
                  </port>
                  <inst class_id_reference="30" object_id="_69">
                    <type>0</type>
                    <name>fft_os_pfb_config_U0</name>
                    <ssdmobj_id>33</ssdmobj_id>
                  </inst>
                </item>
                <item class_id_reference="28" object_id="_70">
                  <port class_id_reference="29" object_id="_71">
                    <name>xk</name>
                    <dir>0</dir>
                    <type>1</type>
                  </port>
                  <inst class_id_reference="30" object_id_reference="_69"/>
                </item>
                <item class_id_reference="28" object_id="_72">
                  <port class_id_reference="29" object_id="_73">
                    <name>status_data_V</name>
                    <dir>0</dir>
                    <type>1</type>
                  </port>
                  <inst class_id_reference="30" object_id_reference="_69"/>
                </item>
                <item class_id_reference="28" object_id="_74">
                  <port class_id_reference="29" object_id="_75">
                    <name>config_ch_data_V</name>
                    <dir>0</dir>
                    <type>0</type>
                  </port>
                  <inst class_id_reference="30" object_id_reference="_69"/>
                </item>
              </pins>
            </item>
            <item class_id_reference="26" object_id="_76">
              <type>0</type>
              <name>be_U0</name>
              <ssdmobj_id>38</ssdmobj_id>
              <pins>
                <count>5</count>
                <item_version>0</item_version>
                <item class_id_reference="28" object_id="_77">
                  <port class_id_reference="29" object_id="_78">
                    <name>ifft_out</name>
                    <dir>0</dir>
                    <type>0</type>
                  </port>
                  <inst class_id_reference="30" object_id="_79">
                    <type>0</type>
                    <name>be_U0</name>
                    <ssdmobj_id>38</ssdmobj_id>
                  </inst>
                </item>
                <item class_id_reference="28" object_id="_80">
                  <port class_id_reference="29" object_id="_81">
                    <name>out_data</name>
                    <dir>3</dir>
                    <type>1</type>
                  </port>
                  <inst class_id_reference="30" object_id_reference="_79"/>
                </item>
                <item class_id_reference="28" object_id="_82">
                  <port class_id_reference="29" object_id="_83">
                    <name>out_last_V</name>
                    <dir>3</dir>
                    <type>1</type>
                  </port>
                  <inst class_id_reference="30" object_id_reference="_79"/>
                </item>
                <item class_id_reference="28" object_id="_84">
                  <port class_id_reference="29" object_id="_85">
                    <name>ifft_status_data_V</name>
                    <dir>0</dir>
                    <type>0</type>
                  </port>
                  <inst class_id_reference="30" object_id_reference="_79"/>
                </item>
                <item class_id_reference="28" object_id="_86">
                  <port class_id_reference="29" object_id="_87">
                    <name>ovflow</name>
                    <dir>3</dir>
                    <type>1</type>
                  </port>
                  <inst class_id_reference="30" object_id_reference="_79"/>
                </item>
              </pins>
            </item>
          </process_list>
          <channel_list class_id="31" tracking_level="0" version="0">
            <count>4</count>
            <item_version>0</item_version>
            <item class_id="32" tracking_level="1" version="0" object_id="_88">
              <type>1</type>
              <name>filter_out_channel</name>
              <ssdmobj_id>18</ssdmobj_id>
              <ctype>0</ctype>
              <depth>1</depth>
              <bitwidth>64</bitwidth>
              <source class_id_reference="28" object_id="_89">
                <port class_id_reference="29" object_id="_90">
                  <name>in</name>
                  <dir>3</dir>
                  <type>0</type>
                </port>
                <inst class_id_reference="30" object_id_reference="_51"/>
              </source>
              <sink class_id_reference="28" object_id="_91">
                <port class_id_reference="29" object_id="_92">
                  <name>out</name>
                  <dir>3</dir>
                  <type>1</type>
                </port>
                <inst class_id_reference="30" object_id_reference="_69"/>
              </sink>
            </item>
            <item class_id_reference="32" object_id="_93">
              <type>1</type>
              <name>ifft_config_data_V</name>
              <ssdmobj_id>11</ssdmobj_id>
              <ctype>0</ctype>
              <depth>1</depth>
              <bitwidth>8</bitwidth>
              <source class_id_reference="28" object_id="_94">
                <port class_id_reference="29" object_id="_95">
                  <name>in</name>
                  <dir>3</dir>
                  <type>0</type>
                </port>
                <inst class_id_reference="30" object_id_reference="_51"/>
              </source>
              <sink class_id_reference="28" object_id="_96">
                <port class_id_reference="29" object_id="_97">
                  <name>out</name>
                  <dir>3</dir>
                  <type>1</type>
                </port>
                <inst class_id_reference="30" object_id_reference="_69"/>
              </sink>
            </item>
            <item class_id_reference="32" object_id="_98">
              <type>1</type>
              <name>ifft_out_channel</name>
              <ssdmobj_id>15</ssdmobj_id>
              <ctype>0</ctype>
              <depth>1</depth>
              <bitwidth>64</bitwidth>
              <source class_id_reference="28" object_id="_99">
                <port class_id_reference="29" object_id="_100">
                  <name>in</name>
                  <dir>3</dir>
                  <type>0</type>
                </port>
                <inst class_id_reference="30" object_id_reference="_69"/>
              </source>
              <sink class_id_reference="28" object_id="_101">
                <port class_id_reference="29" object_id="_102">
                  <name>out</name>
                  <dir>3</dir>
                  <type>1</type>
                </port>
                <inst class_id_reference="30" object_id_reference="_79"/>
              </sink>
            </item>
            <item class_id_reference="32" object_id="_103">
              <type>1</type>
              <name>ifft_status_data_V</name>
              <ssdmobj_id>10</ssdmobj_id>
              <ctype>0</ctype>
              <depth>1</depth>
              <bitwidth>8</bitwidth>
              <source class_id_reference="28" object_id="_104">
                <port class_id_reference="29" object_id="_105">
                  <name>in</name>
                  <dir>3</dir>
                  <type>0</type>
                </port>
                <inst class_id_reference="30" object_id_reference="_69"/>
              </source>
              <sink class_id_reference="28" object_id="_106">
                <port class_id_reference="29" object_id="_107">
                  <name>out</name>
                  <dir>3</dir>
                  <type>1</type>
                </port>
                <inst class_id_reference="30" object_id_reference="_79"/>
              </sink>
            </item>
          </channel_list>
          <net_list class_id="33" tracking_level="0" version="0">
            <count>0</count>
            <item_version>0</item_version>
          </net_list>
        </mDfPipe>
      </item>
    </cdfg_regions>
    <fsm class_id="34" tracking_level="1" version="0" object_id="_108">
      <states class_id="35" tracking_level="0" version="0">
        <count>8</count>
        <item_version>0</item_version>
        <item class_id="36" tracking_level="1" version="0" object_id="_109">
          <id>1</id>
          <operations class_id="37" tracking_level="0" version="0">
            <count>4</count>
            <item_version>0</item_version>
            <item class_id="38" tracking_level="1" version="0" object_id="_110">
              <id>10</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="38" object_id="_111">
              <id>11</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="38" object_id="_112">
              <id>15</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="38" object_id="_113">
              <id>18</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
          </operations>
        </item>
        <item class_id_reference="36" object_id="_114">
          <id>2</id>
          <operations>
            <count>1</count>
            <item_version>0</item_version>
            <item class_id_reference="38" object_id="_115">
              <id>28</id>
              <stage>2</stage>
              <latency>2</latency>
            </item>
          </operations>
        </item>
        <item class_id_reference="36" object_id="_116">
          <id>3</id>
          <operations>
            <count>1</count>
            <item_version>0</item_version>
            <item class_id_reference="38" object_id="_117">
              <id>28</id>
              <stage>1</stage>
              <latency>2</latency>
            </item>
          </operations>
        </item>
        <item class_id_reference="36" object_id="_118">
          <id>4</id>
          <operations>
            <count>1</count>
            <item_version>0</item_version>
            <item class_id_reference="38" object_id="_119">
              <id>33</id>
              <stage>2</stage>
              <latency>2</latency>
            </item>
          </operations>
        </item>
        <item class_id_reference="36" object_id="_120">
          <id>5</id>
          <operations>
            <count>1</count>
            <item_version>0</item_version>
            <item class_id_reference="38" object_id="_121">
              <id>33</id>
              <stage>1</stage>
              <latency>2</latency>
            </item>
          </operations>
        </item>
        <item class_id_reference="36" object_id="_122">
          <id>6</id>
          <operations>
            <count>1</count>
            <item_version>0</item_version>
            <item class_id_reference="38" object_id="_123">
              <id>38</id>
              <stage>2</stage>
              <latency>2</latency>
            </item>
          </operations>
        </item>
        <item class_id_reference="36" object_id="_124">
          <id>7</id>
          <operations>
            <count>1</count>
            <item_version>0</item_version>
            <item class_id_reference="38" object_id="_125">
              <id>38</id>
              <stage>1</stage>
              <latency>2</latency>
            </item>
          </operations>
        </item>
        <item class_id_reference="36" object_id="_126">
          <id>8</id>
          <operations>
            <count>23</count>
            <item_version>0</item_version>
            <item class_id_reference="38" object_id="_127">
              <id>12</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="38" object_id="_128">
              <id>13</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="38" object_id="_129">
              <id>14</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="38" object_id="_130">
              <id>16</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="38" object_id="_131">
              <id>17</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="38" object_id="_132">
              <id>19</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="38" object_id="_133">
              <id>20</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="38" object_id="_134">
              <id>21</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="38" object_id="_135">
              <id>22</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="38" object_id="_136">
              <id>23</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="38" object_id="_137">
              <id>24</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="38" object_id="_138">
              <id>25</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="38" object_id="_139">
              <id>26</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="38" object_id="_140">
              <id>27</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="38" object_id="_141">
              <id>29</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="38" object_id="_142">
              <id>30</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="38" object_id="_143">
              <id>31</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="38" object_id="_144">
              <id>32</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="38" object_id="_145">
              <id>34</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="38" object_id="_146">
              <id>35</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="38" object_id="_147">
              <id>36</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="38" object_id="_148">
              <id>37</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="38" object_id="_149">
              <id>39</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
          </operations>
        </item>
      </states>
      <transitions class_id="39" tracking_level="0" version="0">
        <count>7</count>
        <item_version>0</item_version>
        <item class_id="40" tracking_level="1" version="0" object_id="_150">
          <inState>1</inState>
          <outState>2</outState>
          <condition class_id="41" tracking_level="0" version="0">
            <id>-1</id>
            <sop class_id="42" tracking_level="0" version="0">
              <count>1</count>
              <item_version>0</item_version>
              <item class_id="43" tracking_level="0" version="0">
                <count>0</count>
                <item_version>0</item_version>
              </item>
            </sop>
          </condition>
        </item>
        <item class_id_reference="40" object_id="_151">
          <inState>2</inState>
          <outState>3</outState>
          <condition>
            <id>-1</id>
            <sop>
              <count>1</count>
              <item_version>0</item_version>
              <item>
                <count>0</count>
                <item_version>0</item_version>
              </item>
            </sop>
          </condition>
        </item>
        <item class_id_reference="40" object_id="_152">
          <inState>3</inState>
          <outState>4</outState>
          <condition>
            <id>-1</id>
            <sop>
              <count>1</count>
              <item_version>0</item_version>
              <item>
                <count>0</count>
                <item_version>0</item_version>
              </item>
            </sop>
          </condition>
        </item>
        <item class_id_reference="40" object_id="_153">
          <inState>4</inState>
          <outState>5</outState>
          <condition>
            <id>-1</id>
            <sop>
              <count>1</count>
              <item_version>0</item_version>
              <item>
                <count>0</count>
                <item_version>0</item_version>
              </item>
            </sop>
          </condition>
        </item>
        <item class_id_reference="40" object_id="_154">
          <inState>5</inState>
          <outState>6</outState>
          <condition>
            <id>-1</id>
            <sop>
              <count>1</count>
              <item_version>0</item_version>
              <item>
                <count>0</count>
                <item_version>0</item_version>
              </item>
            </sop>
          </condition>
        </item>
        <item class_id_reference="40" object_id="_155">
          <inState>6</inState>
          <outState>7</outState>
          <condition>
            <id>-1</id>
            <sop>
              <count>1</count>
              <item_version>0</item_version>
              <item>
                <count>0</count>
                <item_version>0</item_version>
              </item>
            </sop>
          </condition>
        </item>
        <item class_id_reference="40" object_id="_156">
          <inState>7</inState>
          <outState>8</outState>
          <condition>
            <id>-1</id>
            <sop>
              <count>1</count>
              <item_version>0</item_version>
              <item>
                <count>0</count>
                <item_version>0</item_version>
              </item>
            </sop>
          </condition>
        </item>
      </transitions>
    </fsm>
    <res class_id="44" tracking_level="1" version="0" object_id="_157">
      <dp_component_resource class_id="45" tracking_level="0" version="0">
        <count>5</count>
        <item_version>0</item_version>
        <item class_id="46" tracking_level="0" version="0">
          <first>be_U0 (be)</first>
          <second class_id="47" tracking_level="0" version="0">
            <count>2</count>
            <item_version>0</item_version>
            <item class_id="48" tracking_level="0" version="0">
              <first>FF</first>
              <second>175</second>
            </item>
            <item>
              <first>LUT</first>
              <second>234</second>
            </item>
          </second>
        </item>
        <item>
          <first>fft_os_pfb_config_U0 (fft_os_pfb_config_s)</first>
          <second>
            <count>4</count>
            <item_version>0</item_version>
            <item>
              <first>BRAM</first>
              <second>2</second>
            </item>
            <item>
              <first>DSP48E</first>
              <second>0</second>
            </item>
            <item>
              <first>FF</first>
              <second>7060</second>
            </item>
            <item>
              <first>LUT</first>
              <second>5301</second>
            </item>
          </second>
        </item>
        <item>
          <first>polyphase_filter_U0 (polyphase_filter)</first>
          <second>
            <count>4</count>
            <item_version>0</item_version>
            <item>
              <first>BRAM</first>
              <second>5</second>
            </item>
            <item>
              <first>DSP48E</first>
              <second>16</second>
            </item>
            <item>
              <first>FF</first>
              <second>1512</second>
            </item>
            <item>
              <first>LUT</first>
              <second>1591</second>
            </item>
          </second>
        </item>
        <item>
          <first>start_for_be_U0_U (start_for_be_U0)</first>
          <second>
            <count>0</count>
            <item_version>0</item_version>
          </second>
        </item>
        <item>
          <first>start_for_fft_os_pfb_config_U0_U (start_for_fft_os_pfb_config_U0)</first>
          <second>
            <count>0</count>
            <item_version>0</item_version>
          </second>
        </item>
      </dp_component_resource>
      <dp_expression_resource>
        <count>1</count>
        <item_version>0</item_version>
        <item>
          <first>polyphase_filter_U0_start_full_n ( and ) </first>
          <second>
            <count>4</count>
            <item_version>0</item_version>
            <item>
              <first>(0P0)</first>
              <second>1</second>
            </item>
            <item>
              <first>(1P1)</first>
              <second>1</second>
            </item>
            <item>
              <first>FF</first>
              <second>0</second>
            </item>
            <item>
              <first>LUT</first>
              <second>2</second>
            </item>
          </second>
        </item>
      </dp_expression_resource>
      <dp_fifo_resource>
        <count>4</count>
        <item_version>0</item_version>
        <item>
          <first>filter_out_channel_U</first>
          <second>
            <count>6</count>
            <item_version>0</item_version>
            <item>
              <first>(0Depth)</first>
              <second>1</second>
            </item>
            <item>
              <first>(1Bits)</first>
              <second>64</second>
            </item>
            <item>
              <first>(2Size:D*B)</first>
              <second>64</second>
            </item>
            <item>
              <first>BRAM</first>
              <second>0</second>
            </item>
            <item>
              <first>FF</first>
              <second>5</second>
            </item>
            <item>
              <first>LUT</first>
              <second>76</second>
            </item>
          </second>
        </item>
        <item>
          <first>ifft_config_data_V_U</first>
          <second>
            <count>6</count>
            <item_version>0</item_version>
            <item>
              <first>(0Depth)</first>
              <second>1</second>
            </item>
            <item>
              <first>(1Bits)</first>
              <second>8</second>
            </item>
            <item>
              <first>(2Size:D*B)</first>
              <second>8</second>
            </item>
            <item>
              <first>BRAM</first>
              <second>0</second>
            </item>
            <item>
              <first>FF</first>
              <second>5</second>
            </item>
            <item>
              <first>LUT</first>
              <second>20</second>
            </item>
          </second>
        </item>
        <item>
          <first>ifft_out_channel_U</first>
          <second>
            <count>6</count>
            <item_version>0</item_version>
            <item>
              <first>(0Depth)</first>
              <second>1</second>
            </item>
            <item>
              <first>(1Bits)</first>
              <second>64</second>
            </item>
            <item>
              <first>(2Size:D*B)</first>
              <second>64</second>
            </item>
            <item>
              <first>BRAM</first>
              <second>0</second>
            </item>
            <item>
              <first>FF</first>
              <second>5</second>
            </item>
            <item>
              <first>LUT</first>
              <second>76</second>
            </item>
          </second>
        </item>
        <item>
          <first>ifft_status_data_V_U</first>
          <second>
            <count>6</count>
            <item_version>0</item_version>
            <item>
              <first>(0Depth)</first>
              <second>1</second>
            </item>
            <item>
              <first>(1Bits)</first>
              <second>8</second>
            </item>
            <item>
              <first>(2Size:D*B)</first>
              <second>8</second>
            </item>
            <item>
              <first>BRAM</first>
              <second>0</second>
            </item>
            <item>
              <first>FF</first>
              <second>5</second>
            </item>
            <item>
              <first>LUT</first>
              <second>20</second>
            </item>
          </second>
        </item>
      </dp_fifo_resource>
      <dp_memory_resource>
        <count>0</count>
        <item_version>0</item_version>
      </dp_memory_resource>
      <dp_multiplexer_resource>
        <count>0</count>
        <item_version>0</item_version>
      </dp_multiplexer_resource>
      <dp_register_resource>
        <count>0</count>
        <item_version>0</item_version>
      </dp_register_resource>
      <dp_dsp_resource>
        <count>5</count>
        <item_version>0</item_version>
        <item>
          <first>be_U0</first>
          <second>
            <count>0</count>
            <item_version>0</item_version>
          </second>
        </item>
        <item>
          <first>fft_os_pfb_config_U0</first>
          <second>
            <count>0</count>
            <item_version>0</item_version>
          </second>
        </item>
        <item>
          <first>polyphase_filter_U0</first>
          <second>
            <count>0</count>
            <item_version>0</item_version>
          </second>
        </item>
        <item>
          <first>start_for_be_U0_U</first>
          <second>
            <count>0</count>
            <item_version>0</item_version>
          </second>
        </item>
        <item>
          <first>start_for_fft_os_pfb_config_U0_U</first>
          <second>
            <count>0</count>
            <item_version>0</item_version>
          </second>
        </item>
      </dp_dsp_resource>
      <dp_component_map class_id="49" tracking_level="0" version="0">
        <count>3</count>
        <item_version>0</item_version>
        <item class_id="50" tracking_level="0" version="0">
          <first>be_U0 (be)</first>
          <second>
            <count>1</count>
            <item_version>0</item_version>
            <item>38</item>
          </second>
        </item>
        <item>
          <first>fft_os_pfb_config_U0 (fft_os_pfb_config_s)</first>
          <second>
            <count>1</count>
            <item_version>0</item_version>
            <item>33</item>
          </second>
        </item>
        <item>
          <first>polyphase_filter_U0 (polyphase_filter)</first>
          <second>
            <count>1</count>
            <item_version>0</item_version>
            <item>28</item>
          </second>
        </item>
      </dp_component_map>
      <dp_expression_map>
        <count>0</count>
        <item_version>0</item_version>
      </dp_expression_map>
      <dp_fifo_map>
        <count>4</count>
        <item_version>0</item_version>
        <item>
          <first>filter_out_channel_U</first>
          <second>
            <count>1</count>
            <item_version>0</item_version>
            <item>79</item>
          </second>
        </item>
        <item>
          <first>ifft_config_data_V_U</first>
          <second>
            <count>1</count>
            <item_version>0</item_version>
            <item>90</item>
          </second>
        </item>
        <item>
          <first>ifft_out_channel_U</first>
          <second>
            <count>1</count>
            <item_version>0</item_version>
            <item>100</item>
          </second>
        </item>
        <item>
          <first>ifft_status_data_V_U</first>
          <second>
            <count>1</count>
            <item_version>0</item_version>
            <item>110</item>
          </second>
        </item>
      </dp_fifo_map>
      <dp_memory_map>
        <count>0</count>
        <item_version>0</item_version>
      </dp_memory_map>
    </res>
    <node_label_latency class_id="51" tracking_level="0" version="0">
      <count>8</count>
      <item_version>0</item_version>
      <item class_id="52" tracking_level="0" version="0">
        <first>10</first>
        <second class_id="53" tracking_level="0" version="0">
          <first>0</first>
          <second>0</second>
        </second>
      </item>
      <item>
        <first>11</first>
        <second>
          <first>0</first>
          <second>0</second>
        </second>
      </item>
      <item>
        <first>15</first>
        <second>
          <first>0</first>
          <second>0</second>
        </second>
      </item>
      <item>
        <first>18</first>
        <second>
          <first>0</first>
          <second>0</second>
        </second>
      </item>
      <item>
        <first>28</first>
        <second>
          <first>1</first>
          <second>1</second>
        </second>
      </item>
      <item>
        <first>33</first>
        <second>
          <first>3</first>
          <second>1</second>
        </second>
      </item>
      <item>
        <first>38</first>
        <second>
          <first>5</first>
          <second>1</second>
        </second>
      </item>
      <item>
        <first>39</first>
        <second>
          <first>7</first>
          <second>0</second>
        </second>
      </item>
    </node_label_latency>
    <bblk_ent_exit class_id="54" tracking_level="0" version="0">
      <count>1</count>
      <item_version>0</item_version>
      <item class_id="55" tracking_level="0" version="0">
        <first>40</first>
        <second class_id="56" tracking_level="0" version="0">
          <first>0</first>
          <second>7</second>
        </second>
      </item>
    </bblk_ent_exit>
    <regions class_id="57" tracking_level="0" version="0">
      <count>1</count>
      <item_version>0</item_version>
      <item class_id="58" tracking_level="1" version="0" object_id="_158">
        <region_name>os_pfb</region_name>
        <basic_blocks>
          <count>1</count>
          <item_version>0</item_version>
          <item>40</item>
        </basic_blocks>
        <nodes>
          <count>30</count>
          <item_version>0</item_version>
          <item>10</item>
          <item>11</item>
          <item>12</item>
          <item>13</item>
          <item>14</item>
          <item>15</item>
          <item>16</item>
          <item>17</item>
          <item>18</item>
          <item>19</item>
          <item>20</item>
          <item>21</item>
          <item>22</item>
          <item>23</item>
          <item>24</item>
          <item>25</item>
          <item>26</item>
          <item>27</item>
          <item>28</item>
          <item>29</item>
          <item>30</item>
          <item>31</item>
          <item>32</item>
          <item>33</item>
          <item>34</item>
          <item>35</item>
          <item>36</item>
          <item>37</item>
          <item>38</item>
          <item>39</item>
        </nodes>
        <anchor_node>-1</anchor_node>
        <region_type>16</region_type>
        <interval>0</interval>
        <pipe_depth>0</pipe_depth>
      </item>
    </regions>
    <dp_fu_nodes class_id="59" tracking_level="0" version="0">
      <count>7</count>
      <item_version>0</item_version>
      <item class_id="60" tracking_level="0" version="0">
        <first>156</first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>10</item>
        </second>
      </item>
      <item>
        <first>160</first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>11</item>
        </second>
      </item>
      <item>
        <first>164</first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>15</item>
        </second>
      </item>
      <item>
        <first>168</first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>18</item>
        </second>
      </item>
      <item>
        <first>172</first>
        <second>
          <count>2</count>
          <item_version>0</item_version>
          <item>28</item>
          <item>28</item>
        </second>
      </item>
      <item>
        <first>190</first>
        <second>
          <count>2</count>
          <item_version>0</item_version>
          <item>38</item>
          <item>38</item>
        </second>
      </item>
      <item>
        <first>202</first>
        <second>
          <count>2</count>
          <item_version>0</item_version>
          <item>33</item>
          <item>33</item>
        </second>
      </item>
    </dp_fu_nodes>
    <dp_fu_nodes_expression class_id="62" tracking_level="0" version="0">
      <count>4</count>
      <item_version>0</item_version>
      <item class_id="63" tracking_level="0" version="0">
        <first>filter_out_channel_fu_168</first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>18</item>
        </second>
      </item>
      <item>
        <first>ifft_config_data_V_fu_160</first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>11</item>
        </second>
      </item>
      <item>
        <first>ifft_out_channel_fu_164</first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>15</item>
        </second>
      </item>
      <item>
        <first>ifft_status_data_V_fu_156</first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>10</item>
        </second>
      </item>
    </dp_fu_nodes_expression>
    <dp_fu_nodes_module>
      <count>3</count>
      <item_version>0</item_version>
      <item>
        <first>grp_be_fu_190</first>
        <second>
          <count>2</count>
          <item_version>0</item_version>
          <item>38</item>
          <item>38</item>
        </second>
      </item>
      <item>
        <first>grp_fft_os_pfb_config_s_fu_202</first>
        <second>
          <count>2</count>
          <item_version>0</item_version>
          <item>33</item>
          <item>33</item>
        </second>
      </item>
      <item>
        <first>grp_polyphase_filter_fu_172</first>
        <second>
          <count>2</count>
          <item_version>0</item_version>
          <item>28</item>
          <item>28</item>
        </second>
      </item>
    </dp_fu_nodes_module>
    <dp_fu_nodes_io>
      <count>0</count>
      <item_version>0</item_version>
    </dp_fu_nodes_io>
    <return_ports>
      <count>0</count>
      <item_version>0</item_version>
    </return_ports>
    <dp_mem_port_nodes class_id="64" tracking_level="0" version="0">
      <count>4</count>
      <item_version>0</item_version>
      <item class_id="65" tracking_level="0" version="0">
        <first class_id="66" tracking_level="0" version="0">
          <first>filter_state_M_imag</first>
          <second>100</second>
        </first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>28</item>
        </second>
      </item>
      <item>
        <first>
          <first>filter_state_M_real</first>
          <second>100</second>
        </first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>28</item>
        </second>
      </item>
      <item>
        <first>
          <first>h</first>
          <second>100</second>
        </first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>28</item>
        </second>
      </item>
      <item>
        <first>
          <first>shift_states</first>
          <second>100</second>
        </first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>28</item>
        </second>
      </item>
    </dp_mem_port_nodes>
    <dp_reg_nodes>
      <count>4</count>
      <item_version>0</item_version>
      <item>
        <first>210</first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>10</item>
        </second>
      </item>
      <item>
        <first>216</first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>11</item>
        </second>
      </item>
      <item>
        <first>222</first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>15</item>
        </second>
      </item>
      <item>
        <first>228</first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>18</item>
        </second>
      </item>
    </dp_reg_nodes>
    <dp_regname_nodes>
      <count>4</count>
      <item_version>0</item_version>
      <item>
        <first>filter_out_channel_reg_228</first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>18</item>
        </second>
      </item>
      <item>
        <first>ifft_config_data_V_reg_216</first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>11</item>
        </second>
      </item>
      <item>
        <first>ifft_out_channel_reg_222</first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>15</item>
        </second>
      </item>
      <item>
        <first>ifft_status_data_V_reg_210</first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>10</item>
        </second>
      </item>
    </dp_regname_nodes>
    <dp_reg_phi>
      <count>0</count>
      <item_version>0</item_version>
    </dp_reg_phi>
    <dp_regname_phi>
      <count>0</count>
      <item_version>0</item_version>
    </dp_regname_phi>
    <dp_port_io_nodes class_id="67" tracking_level="0" version="0">
      <count>4</count>
      <item_version>0</item_version>
      <item class_id="68" tracking_level="0" version="0">
        <first>in_r</first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>
            <first>call</first>
            <second>
              <count>1</count>
              <item_version>0</item_version>
              <item>28</item>
            </second>
          </item>
        </second>
      </item>
      <item>
        <first>out_data</first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>
            <first>call</first>
            <second>
              <count>1</count>
              <item_version>0</item_version>
              <item>38</item>
            </second>
          </item>
        </second>
      </item>
      <item>
        <first>out_last_V</first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>
            <first>call</first>
            <second>
              <count>1</count>
              <item_version>0</item_version>
              <item>38</item>
            </second>
          </item>
        </second>
      </item>
      <item>
        <first>ovflow</first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>
            <first>call</first>
            <second>
              <count>1</count>
              <item_version>0</item_version>
              <item>38</item>
            </second>
          </item>
        </second>
      </item>
    </dp_port_io_nodes>
    <port2core class_id="69" tracking_level="0" version="0">
      <count>0</count>
      <item_version>0</item_version>
    </port2core>
    <node2core>
      <count>4</count>
      <item_version>0</item_version>
      <item class_id="70" tracking_level="0" version="0">
        <first>10</first>
        <second>FIFO</second>
      </item>
      <item>
        <first>11</first>
        <second>FIFO</second>
      </item>
      <item>
        <first>15</first>
        <second>FIFO</second>
      </item>
      <item>
        <first>18</first>
        <second>FIFO</second>
      </item>
    </node2core>
  </syndb>
</boost_serialization>
