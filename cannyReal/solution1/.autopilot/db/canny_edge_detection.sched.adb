<?xml version="1.0" encoding="UTF-8" standalone="yes" ?>
<!DOCTYPE boost_serialization>
<boost_serialization signature="serialization::archive" version="15">
<syndb class_id="0" tracking_level="0" version="0">
	<userIPLatency>-1</userIPLatency>
	<userIPName></userIPName>
	<cdfg class_id="1" tracking_level="1" version="0" object_id="_0">
		<name>canny_edge_detection</name>
		<ret_bitwidth>0</ret_bitwidth>
		<ports class_id="2" tracking_level="0" version="0">
			<count>6</count>
			<item_version>0</item_version>
			<item class_id="3" tracking_level="1" version="0" object_id="_1">
				<Value class_id="4" tracking_level="0" version="0">
					<Obj class_id="5" tracking_level="0" version="0">
						<type>1</type>
						<id>1</id>
						<name>axis_in_data_V</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo class_id="6" tracking_level="0" version="0">
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName>axis_in.data.V</originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>24</bitwidth>
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
						<name>axis_in_last_V</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName>axis_in.last.V</originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>1</bitwidth>
				</Value>
				<direction>0</direction>
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
						<name>axis_out_data_V</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName>axis_out.data.V</originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>24</bitwidth>
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
						<name>axis_out_last_V</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName>axis_out.last.V</originalName>
						<rtlName></rtlName>
						<coreName></coreName>
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
			<item class_id_reference="3" object_id="_5">
				<Value>
					<Obj>
						<type>1</type>
						<id>5</id>
						<name>hist_hthr</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName>hist_hthr</originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>8</bitwidth>
				</Value>
				<direction>0</direction>
				<if_type>0</if_type>
				<array_size>0</array_size>
				<bit_vecs>
					<count>0</count>
					<item_version>0</item_version>
				</bit_vecs>
			</item>
			<item class_id_reference="3" object_id="_6">
				<Value>
					<Obj>
						<type>1</type>
						<id>6</id>
						<name>hist_lthr</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName>hist_lthr</originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>8</bitwidth>
				</Value>
				<direction>0</direction>
				<if_type>0</if_type>
				<array_size>0</array_size>
				<bit_vecs>
					<count>0</count>
					<item_version>0</item_version>
				</bit_vecs>
			</item>
		</ports>
		<nodes class_id="8" tracking_level="0" version="0">
			<count>16</count>
			<item_version>0</item_version>
			<item class_id="9" tracking_level="1" version="0" object_id="_7">
				<Value>
					<Obj>
						<type>0</type>
						<id>15</id>
						<name>hist_lthr_read</name>
						<fileName>../../../../Desktop/Pynq-Z2-CannyEdgeDetection-master/hls/canny_edge_detection.cpp</fileName>
						<fileDirectory>C:\Users\ASUS\AppData\Roaming\Xilinx\Vivado</fileDirectory>
						<lineNumber>39</lineNumber>
						<contextFuncName>canny_edge_detection</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item class_id="10" tracking_level="0" version="0">
								<first>C:\Users\ASUS\AppData\Roaming\Xilinx\Vivado</first>
								<second class_id="11" tracking_level="0" version="0">
									<count>1</count>
									<item_version>0</item_version>
									<item class_id="12" tracking_level="0" version="0">
										<first class_id="13" tracking_level="0" version="0">
											<first>../../../../Desktop/Pynq-Z2-CannyEdgeDetection-master/hls/canny_edge_detection.cpp</first>
											<second>canny_edge_detection</second>
										</first>
										<second>39</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName>hist_lthr</originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>8</bitwidth>
				</Value>
				<oprand_edges>
					<count>2</count>
					<item_version>0</item_version>
					<item>70</item>
					<item>71</item>
				</oprand_edges>
				<opcode>read</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>1.00</m_delay>
				<m_topoIndex>1</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_8">
				<Value>
					<Obj>
						<type>0</type>
						<id>16</id>
						<name>hist_hthr_read</name>
						<fileName>../../../../Desktop/Pynq-Z2-CannyEdgeDetection-master/hls/canny_edge_detection.cpp</fileName>
						<fileDirectory>C:\Users\ASUS\AppData\Roaming\Xilinx\Vivado</fileDirectory>
						<lineNumber>39</lineNumber>
						<contextFuncName>canny_edge_detection</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>C:\Users\ASUS\AppData\Roaming\Xilinx\Vivado</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>../../../../Desktop/Pynq-Z2-CannyEdgeDetection-master/hls/canny_edge_detection.cpp</first>
											<second>canny_edge_detection</second>
										</first>
										<second>39</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName>hist_hthr</originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>8</bitwidth>
				</Value>
				<oprand_edges>
					<count>2</count>
					<item_version>0</item_version>
					<item>72</item>
					<item>73</item>
				</oprand_edges>
				<opcode>read</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>1.00</m_delay>
				<m_topoIndex>2</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_9">
				<Value>
					<Obj>
						<type>0</type>
						<id>17</id>
						<name>hist_lthr_c2</name>
						<fileName>../../../../Desktop/Pynq-Z2-CannyEdgeDetection-master/hls/canny_edge_detection.cpp</fileName>
						<fileDirectory>C:\Users\ASUS\AppData\Roaming\Xilinx\Vivado</fileDirectory>
						<lineNumber>39</lineNumber>
						<contextFuncName>canny_edge_detection</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>C:\Users\ASUS\AppData\Roaming\Xilinx\Vivado</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>../../../../Desktop/Pynq-Z2-CannyEdgeDetection-master/hls/canny_edge_detection.cpp</first>
											<second>canny_edge_detection</second>
										</first>
										<second>39</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>8</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>75</item>
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
			<item class_id_reference="9" object_id="_10">
				<Value>
					<Obj>
						<type>0</type>
						<id>18</id>
						<name>hist_hthr_c1</name>
						<fileName>../../../../Desktop/Pynq-Z2-CannyEdgeDetection-master/hls/canny_edge_detection.cpp</fileName>
						<fileDirectory>C:\Users\ASUS\AppData\Roaming\Xilinx\Vivado</fileDirectory>
						<lineNumber>39</lineNumber>
						<contextFuncName>canny_edge_detection</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>C:\Users\ASUS\AppData\Roaming\Xilinx\Vivado</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>../../../../Desktop/Pynq-Z2-CannyEdgeDetection-master/hls/canny_edge_detection.cpp</first>
											<second>canny_edge_detection</second>
										</first>
										<second>39</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>8</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>76</item>
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
			<item class_id_reference="9" object_id="_11">
				<Value>
					<Obj>
						<type>0</type>
						<id>35</id>
						<name>hist_lthr_c</name>
						<fileName>../../../../Desktop/Pynq-Z2-CannyEdgeDetection-master/hls/canny_edge_detection.cpp</fileName>
						<fileDirectory>C:\Users\ASUS\AppData\Roaming\Xilinx\Vivado</fileDirectory>
						<lineNumber>39</lineNumber>
						<contextFuncName>canny_edge_detection</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>C:\Users\ASUS\AppData\Roaming\Xilinx\Vivado</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>../../../../Desktop/Pynq-Z2-CannyEdgeDetection-master/hls/canny_edge_detection.cpp</first>
											<second>canny_edge_detection</second>
										</first>
										<second>39</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>8</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>77</item>
				</oprand_edges>
				<opcode>alloca</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>5</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_12">
				<Value>
					<Obj>
						<type>0</type>
						<id>36</id>
						<name>hist_hthr_c</name>
						<fileName>../../../../Desktop/Pynq-Z2-CannyEdgeDetection-master/hls/canny_edge_detection.cpp</fileName>
						<fileDirectory>C:\Users\ASUS\AppData\Roaming\Xilinx\Vivado</fileDirectory>
						<lineNumber>39</lineNumber>
						<contextFuncName>canny_edge_detection</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>C:\Users\ASUS\AppData\Roaming\Xilinx\Vivado</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>../../../../Desktop/Pynq-Z2-CannyEdgeDetection-master/hls/canny_edge_detection.cpp</first>
											<second>canny_edge_detection</second>
										</first>
										<second>39</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>8</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>78</item>
				</oprand_edges>
				<opcode>alloca</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>6</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_13">
				<Value>
					<Obj>
						<type>0</type>
						<id>58</id>
						<name>_ln39</name>
						<fileName>../../../../Desktop/Pynq-Z2-CannyEdgeDetection-master/hls/canny_edge_detection.cpp</fileName>
						<fileDirectory>C:\Users\ASUS\AppData\Roaming\Xilinx\Vivado</fileDirectory>
						<lineNumber>39</lineNumber>
						<contextFuncName>canny_edge_detection</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>C:\Users\ASUS\AppData\Roaming\Xilinx\Vivado</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>../../../../Desktop/Pynq-Z2-CannyEdgeDetection-master/hls/canny_edge_detection.cpp</first>
											<second>canny_edge_detection</second>
										</first>
										<second>39</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<oprand_edges>
					<count>5</count>
					<item_version>0</item_version>
					<item>80</item>
					<item>81</item>
					<item>82</item>
					<item>83</item>
					<item>84</item>
				</oprand_edges>
				<opcode>call</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>3.63</m_delay>
				<m_topoIndex>7</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_14">
				<Value>
					<Obj>
						<type>0</type>
						<id>59</id>
						<name>_ln58</name>
						<fileName>../../../../Desktop/Pynq-Z2-CannyEdgeDetection-master/hls/canny_edge_detection.cpp</fileName>
						<fileDirectory>C:\Users\ASUS\AppData\Roaming\Xilinx\Vivado</fileDirectory>
						<lineNumber>58</lineNumber>
						<contextFuncName>canny_edge_detection</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>C:\Users\ASUS\AppData\Roaming\Xilinx\Vivado</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>../../../../Desktop/Pynq-Z2-CannyEdgeDetection-master/hls/canny_edge_detection.cpp</first>
											<second>canny_edge_detection</second>
										</first>
										<second>58</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<oprand_edges>
					<count>9</count>
					<item_version>0</item_version>
					<item>86</item>
					<item>87</item>
					<item>88</item>
					<item>89</item>
					<item>90</item>
					<item>91</item>
					<item>110</item>
					<item>664</item>
					<item>665</item>
				</oprand_edges>
				<opcode>call</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>8</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_15">
				<Value>
					<Obj>
						<type>0</type>
						<id>60</id>
						<name>_ln61</name>
						<fileName>../../../../Desktop/Pynq-Z2-CannyEdgeDetection-master/hls/canny_edge_detection.cpp</fileName>
						<fileDirectory>C:\Users\ASUS\AppData\Roaming\Xilinx\Vivado</fileDirectory>
						<lineNumber>61</lineNumber>
						<contextFuncName>canny_edge_detection</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>C:\Users\ASUS\AppData\Roaming\Xilinx\Vivado</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>../../../../Desktop/Pynq-Z2-CannyEdgeDetection-master/hls/canny_edge_detection.cpp</first>
											<second>canny_edge_detection</second>
										</first>
										<second>61</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<oprand_edges>
					<count>5</count>
					<item_version>0</item_version>
					<item>93</item>
					<item>111</item>
					<item>112</item>
					<item>663</item>
					<item>666</item>
				</oprand_edges>
				<opcode>call</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>9</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_16">
				<Value>
					<Obj>
						<type>0</type>
						<id>61</id>
						<name>_ln64</name>
						<fileName>../../../../Desktop/Pynq-Z2-CannyEdgeDetection-master/hls/canny_edge_detection.cpp</fileName>
						<fileDirectory>C:\Users\ASUS\AppData\Roaming\Xilinx\Vivado</fileDirectory>
						<lineNumber>64</lineNumber>
						<contextFuncName>canny_edge_detection</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>C:\Users\ASUS\AppData\Roaming\Xilinx\Vivado</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>../../../../Desktop/Pynq-Z2-CannyEdgeDetection-master/hls/canny_edge_detection.cpp</first>
											<second>canny_edge_detection</second>
										</first>
										<second>64</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<oprand_edges>
					<count>6</count>
					<item_version>0</item_version>
					<item>95</item>
					<item>113</item>
					<item>114</item>
					<item>115</item>
					<item>662</item>
					<item>667</item>
				</oprand_edges>
				<opcode>call</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>10</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_17">
				<Value>
					<Obj>
						<type>0</type>
						<id>62</id>
						<name>_ln67</name>
						<fileName>../../../../Desktop/Pynq-Z2-CannyEdgeDetection-master/hls/canny_edge_detection.cpp</fileName>
						<fileDirectory>C:\Users\ASUS\AppData\Roaming\Xilinx\Vivado</fileDirectory>
						<lineNumber>67</lineNumber>
						<contextFuncName>canny_edge_detection</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>C:\Users\ASUS\AppData\Roaming\Xilinx\Vivado</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>../../../../Desktop/Pynq-Z2-CannyEdgeDetection-master/hls/canny_edge_detection.cpp</first>
											<second>canny_edge_detection</second>
										</first>
										<second>67</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<oprand_edges>
					<count>6</count>
					<item_version>0</item_version>
					<item>97</item>
					<item>116</item>
					<item>117</item>
					<item>118</item>
					<item>661</item>
					<item>668</item>
				</oprand_edges>
				<opcode>call</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>11</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_18">
				<Value>
					<Obj>
						<type>0</type>
						<id>63</id>
						<name>_ln71</name>
						<fileName>../../../../Desktop/Pynq-Z2-CannyEdgeDetection-master/hls/canny_edge_detection.cpp</fileName>
						<fileDirectory>C:\Users\ASUS\AppData\Roaming\Xilinx\Vivado</fileDirectory>
						<lineNumber>71</lineNumber>
						<contextFuncName>canny_edge_detection</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>C:\Users\ASUS\AppData\Roaming\Xilinx\Vivado</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>../../../../Desktop/Pynq-Z2-CannyEdgeDetection-master/hls/canny_edge_detection.cpp</first>
											<second>canny_edge_detection</second>
										</first>
										<second>71</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<oprand_edges>
					<count>5</count>
					<item_version>0</item_version>
					<item>99</item>
					<item>119</item>
					<item>120</item>
					<item>660</item>
					<item>669</item>
				</oprand_edges>
				<opcode>call</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>12</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_19">
				<Value>
					<Obj>
						<type>0</type>
						<id>64</id>
						<name>_ln74</name>
						<fileName>../../../../Desktop/Pynq-Z2-CannyEdgeDetection-master/hls/canny_edge_detection.cpp</fileName>
						<fileDirectory>C:\Users\ASUS\AppData\Roaming\Xilinx\Vivado</fileDirectory>
						<lineNumber>74</lineNumber>
						<contextFuncName>canny_edge_detection</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>C:\Users\ASUS\AppData\Roaming\Xilinx\Vivado</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>../../../../Desktop/Pynq-Z2-CannyEdgeDetection-master/hls/canny_edge_detection.cpp</first>
											<second>canny_edge_detection</second>
										</first>
										<second>74</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<oprand_edges>
					<count>7</count>
					<item_version>0</item_version>
					<item>101</item>
					<item>102</item>
					<item>103</item>
					<item>121</item>
					<item>122</item>
					<item>659</item>
					<item>670</item>
				</oprand_edges>
				<opcode>call</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>13</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_20">
				<Value>
					<Obj>
						<type>0</type>
						<id>65</id>
						<name>_ln77</name>
						<fileName>../../../../Desktop/Pynq-Z2-CannyEdgeDetection-master/hls/canny_edge_detection.cpp</fileName>
						<fileDirectory>C:\Users\ASUS\AppData\Roaming\Xilinx\Vivado</fileDirectory>
						<lineNumber>77</lineNumber>
						<contextFuncName>canny_edge_detection</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>C:\Users\ASUS\AppData\Roaming\Xilinx\Vivado</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>../../../../Desktop/Pynq-Z2-CannyEdgeDetection-master/hls/canny_edge_detection.cpp</first>
											<second>canny_edge_detection</second>
										</first>
										<second>77</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<oprand_edges>
					<count>5</count>
					<item_version>0</item_version>
					<item>105</item>
					<item>123</item>
					<item>124</item>
					<item>658</item>
					<item>671</item>
				</oprand_edges>
				<opcode>call</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>14</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_21">
				<Value>
					<Obj>
						<type>0</type>
						<id>66</id>
						<name>_ln80</name>
						<fileName>../../../../Desktop/Pynq-Z2-CannyEdgeDetection-master/hls/canny_edge_detection.cpp</fileName>
						<fileDirectory>C:\Users\ASUS\AppData\Roaming\Xilinx\Vivado</fileDirectory>
						<lineNumber>80</lineNumber>
						<contextFuncName>canny_edge_detection</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>C:\Users\ASUS\AppData\Roaming\Xilinx\Vivado</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>../../../../Desktop/Pynq-Z2-CannyEdgeDetection-master/hls/canny_edge_detection.cpp</first>
											<second>canny_edge_detection</second>
										</first>
										<second>80</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<oprand_edges>
					<count>6</count>
					<item_version>0</item_version>
					<item>107</item>
					<item>108</item>
					<item>109</item>
					<item>125</item>
					<item>657</item>
					<item>672</item>
				</oprand_edges>
				<opcode>call</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>15</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_22">
				<Value>
					<Obj>
						<type>0</type>
						<id>67</id>
						<name>_ln81</name>
						<fileName>../../../../Desktop/Pynq-Z2-CannyEdgeDetection-master/hls/canny_edge_detection.cpp</fileName>
						<fileDirectory>C:\Users\ASUS\AppData\Roaming\Xilinx\Vivado</fileDirectory>
						<lineNumber>81</lineNumber>
						<contextFuncName>canny_edge_detection</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>C:\Users\ASUS\AppData\Roaming\Xilinx\Vivado</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>../../../../Desktop/Pynq-Z2-CannyEdgeDetection-master/hls/canny_edge_detection.cpp</first>
											<second>canny_edge_detection</second>
										</first>
										<second>81</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
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
				<m_topoIndex>16</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
		</nodes>
		<consts class_id="15" tracking_level="0" version="0">
			<count>10</count>
			<item_version>0</item_version>
			<item class_id="16" tracking_level="1" version="0" object_id="_23">
				<Value>
					<Obj>
						<type>2</type>
						<id>74</id>
						<name>empty</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>64</bitwidth>
				</Value>
				<const_type>0</const_type>
				<content>1</content>
			</item>
			<item class_id_reference="16" object_id="_24">
				<Value>
					<Obj>
						<type>2</type>
						<id>79</id>
						<name>canny_edge_detection_1_1</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<const_type>6</const_type>
				<content>&lt;constant:canny_edge_detection.1.1&gt;</content>
			</item>
			<item class_id_reference="16" object_id="_25">
				<Value>
					<Obj>
						<type>2</type>
						<id>85</id>
						<name>AXIS2GrayArray66</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<const_type>6</const_type>
				<content>&lt;constant:AXIS2GrayArray66&gt;</content>
			</item>
			<item class_id_reference="16" object_id="_26">
				<Value>
					<Obj>
						<type>2</type>
						<id>92</id>
						<name>GaussianBlur</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<const_type>6</const_type>
				<content>&lt;constant:GaussianBlur&gt;</content>
			</item>
			<item class_id_reference="16" object_id="_27">
				<Value>
					<Obj>
						<type>2</type>
						<id>94</id>
						<name>Sobel_512u_512u_s</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<const_type>6</const_type>
				<content>&lt;constant:Sobel&lt;512u, 512u&gt;&gt;</content>
			</item>
			<item class_id_reference="16" object_id="_28">
				<Value>
					<Obj>
						<type>2</type>
						<id>96</id>
						<name>NonMaxSuppression</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<const_type>6</const_type>
				<content>&lt;constant:NonMaxSuppression&gt;</content>
			</item>
			<item class_id_reference="16" object_id="_29">
				<Value>
					<Obj>
						<type>2</type>
						<id>98</id>
						<name>ZeroPadding</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<const_type>6</const_type>
				<content>&lt;constant:ZeroPadding&gt;</content>
			</item>
			<item class_id_reference="16" object_id="_30">
				<Value>
					<Obj>
						<type>2</type>
						<id>100</id>
						<name>HystThreshold</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<const_type>6</const_type>
				<content>&lt;constant:HystThreshold&gt;</content>
			</item>
			<item class_id_reference="16" object_id="_31">
				<Value>
					<Obj>
						<type>2</type>
						<id>104</id>
						<name>HystThresholdComp</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<const_type>6</const_type>
				<content>&lt;constant:HystThresholdComp&gt;</content>
			</item>
			<item class_id_reference="16" object_id="_32">
				<Value>
					<Obj>
						<type>2</type>
						<id>106</id>
						<name>GrayArray2AXIS</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<const_type>6</const_type>
				<content>&lt;constant:GrayArray2AXIS&gt;</content>
			</item>
		</consts>
		<blocks class_id="17" tracking_level="0" version="0">
			<count>1</count>
			<item_version>0</item_version>
			<item class_id="18" tracking_level="1" version="0" object_id="_33">
				<Obj>
					<type>3</type>
					<id>68</id>
					<name>canny_edge_detection</name>
					<fileName></fileName>
					<fileDirectory></fileDirectory>
					<lineNumber>0</lineNumber>
					<contextFuncName></contextFuncName>
					<inlineStackInfo>
						<count>0</count>
						<item_version>0</item_version>
					</inlineStackInfo>
					<originalName></originalName>
					<rtlName></rtlName>
					<coreName></coreName>
				</Obj>
				<node_objs>
					<count>16</count>
					<item_version>0</item_version>
					<item>15</item>
					<item>16</item>
					<item>17</item>
					<item>18</item>
					<item>35</item>
					<item>36</item>
					<item>58</item>
					<item>59</item>
					<item>60</item>
					<item>61</item>
					<item>62</item>
					<item>63</item>
					<item>64</item>
					<item>65</item>
					<item>66</item>
					<item>67</item>
				</node_objs>
			</item>
		</blocks>
		<edges class_id="19" tracking_level="0" version="0">
			<count>60</count>
			<item_version>0</item_version>
			<item class_id="20" tracking_level="1" version="0" object_id="_34">
				<id>71</id>
				<edge_type>1</edge_type>
				<source_obj>6</source_obj>
				<sink_obj>15</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_35">
				<id>73</id>
				<edge_type>1</edge_type>
				<source_obj>5</source_obj>
				<sink_obj>16</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_36">
				<id>75</id>
				<edge_type>1</edge_type>
				<source_obj>74</source_obj>
				<sink_obj>17</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_37">
				<id>76</id>
				<edge_type>1</edge_type>
				<source_obj>74</source_obj>
				<sink_obj>18</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_38">
				<id>77</id>
				<edge_type>1</edge_type>
				<source_obj>74</source_obj>
				<sink_obj>35</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_39">
				<id>78</id>
				<edge_type>1</edge_type>
				<source_obj>74</source_obj>
				<sink_obj>36</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_40">
				<id>80</id>
				<edge_type>1</edge_type>
				<source_obj>79</source_obj>
				<sink_obj>58</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_41">
				<id>81</id>
				<edge_type>1</edge_type>
				<source_obj>16</source_obj>
				<sink_obj>58</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_42">
				<id>82</id>
				<edge_type>1</edge_type>
				<source_obj>15</source_obj>
				<sink_obj>58</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_43">
				<id>83</id>
				<edge_type>1</edge_type>
				<source_obj>18</source_obj>
				<sink_obj>58</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_44">
				<id>84</id>
				<edge_type>1</edge_type>
				<source_obj>17</source_obj>
				<sink_obj>58</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_45">
				<id>86</id>
				<edge_type>1</edge_type>
				<source_obj>85</source_obj>
				<sink_obj>59</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_46">
				<id>87</id>
				<edge_type>1</edge_type>
				<source_obj>1</source_obj>
				<sink_obj>59</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_47">
				<id>88</id>
				<edge_type>1</edge_type>
				<source_obj>18</source_obj>
				<sink_obj>59</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_48">
				<id>89</id>
				<edge_type>1</edge_type>
				<source_obj>17</source_obj>
				<sink_obj>59</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_49">
				<id>90</id>
				<edge_type>1</edge_type>
				<source_obj>36</source_obj>
				<sink_obj>59</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_50">
				<id>91</id>
				<edge_type>1</edge_type>
				<source_obj>35</source_obj>
				<sink_obj>59</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_51">
				<id>93</id>
				<edge_type>1</edge_type>
				<source_obj>92</source_obj>
				<sink_obj>60</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_52">
				<id>95</id>
				<edge_type>1</edge_type>
				<source_obj>94</source_obj>
				<sink_obj>61</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_53">
				<id>97</id>
				<edge_type>1</edge_type>
				<source_obj>96</source_obj>
				<sink_obj>62</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_54">
				<id>99</id>
				<edge_type>1</edge_type>
				<source_obj>98</source_obj>
				<sink_obj>63</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_55">
				<id>101</id>
				<edge_type>1</edge_type>
				<source_obj>100</source_obj>
				<sink_obj>64</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_56">
				<id>102</id>
				<edge_type>1</edge_type>
				<source_obj>36</source_obj>
				<sink_obj>64</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_57">
				<id>103</id>
				<edge_type>1</edge_type>
				<source_obj>35</source_obj>
				<sink_obj>64</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_58">
				<id>105</id>
				<edge_type>1</edge_type>
				<source_obj>104</source_obj>
				<sink_obj>65</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_59">
				<id>107</id>
				<edge_type>1</edge_type>
				<source_obj>106</source_obj>
				<sink_obj>66</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_60">
				<id>108</id>
				<edge_type>1</edge_type>
				<source_obj>3</source_obj>
				<sink_obj>66</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_61">
				<id>109</id>
				<edge_type>1</edge_type>
				<source_obj>4</source_obj>
				<sink_obj>66</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_62">
				<id>110</id>
				<edge_type>1</edge_type>
				<source_obj>7</source_obj>
				<sink_obj>59</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_63">
				<id>111</id>
				<edge_type>1</edge_type>
				<source_obj>7</source_obj>
				<sink_obj>60</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_64">
				<id>112</id>
				<edge_type>1</edge_type>
				<source_obj>8</source_obj>
				<sink_obj>60</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_65">
				<id>113</id>
				<edge_type>1</edge_type>
				<source_obj>8</source_obj>
				<sink_obj>61</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_66">
				<id>114</id>
				<edge_type>1</edge_type>
				<source_obj>9</source_obj>
				<sink_obj>61</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_67">
				<id>115</id>
				<edge_type>1</edge_type>
				<source_obj>10</source_obj>
				<sink_obj>61</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_68">
				<id>116</id>
				<edge_type>1</edge_type>
				<source_obj>9</source_obj>
				<sink_obj>62</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_69">
				<id>117</id>
				<edge_type>1</edge_type>
				<source_obj>10</source_obj>
				<sink_obj>62</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_70">
				<id>118</id>
				<edge_type>1</edge_type>
				<source_obj>11</source_obj>
				<sink_obj>62</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_71">
				<id>119</id>
				<edge_type>1</edge_type>
				<source_obj>11</source_obj>
				<sink_obj>63</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_72">
				<id>120</id>
				<edge_type>1</edge_type>
				<source_obj>12</source_obj>
				<sink_obj>63</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_73">
				<id>121</id>
				<edge_type>1</edge_type>
				<source_obj>12</source_obj>
				<sink_obj>64</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_74">
				<id>122</id>
				<edge_type>1</edge_type>
				<source_obj>13</source_obj>
				<sink_obj>64</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_75">
				<id>123</id>
				<edge_type>1</edge_type>
				<source_obj>13</source_obj>
				<sink_obj>65</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_76">
				<id>124</id>
				<edge_type>1</edge_type>
				<source_obj>14</source_obj>
				<sink_obj>65</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_77">
				<id>125</id>
				<edge_type>1</edge_type>
				<source_obj>14</source_obj>
				<sink_obj>66</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_78">
				<id>657</id>
				<edge_type>4</edge_type>
				<source_obj>65</source_obj>
				<sink_obj>66</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_79">
				<id>658</id>
				<edge_type>4</edge_type>
				<source_obj>64</source_obj>
				<sink_obj>65</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_80">
				<id>659</id>
				<edge_type>4</edge_type>
				<source_obj>63</source_obj>
				<sink_obj>64</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_81">
				<id>660</id>
				<edge_type>4</edge_type>
				<source_obj>62</source_obj>
				<sink_obj>63</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_82">
				<id>661</id>
				<edge_type>4</edge_type>
				<source_obj>61</source_obj>
				<sink_obj>62</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_83">
				<id>662</id>
				<edge_type>4</edge_type>
				<source_obj>60</source_obj>
				<sink_obj>61</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_84">
				<id>663</id>
				<edge_type>4</edge_type>
				<source_obj>59</source_obj>
				<sink_obj>60</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_85">
				<id>664</id>
				<edge_type>4</edge_type>
				<source_obj>58</source_obj>
				<sink_obj>59</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_86">
				<id>665</id>
				<edge_type>4</edge_type>
				<source_obj>58</source_obj>
				<sink_obj>59</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_87">
				<id>666</id>
				<edge_type>4</edge_type>
				<source_obj>59</source_obj>
				<sink_obj>60</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_88">
				<id>667</id>
				<edge_type>4</edge_type>
				<source_obj>60</source_obj>
				<sink_obj>61</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_89">
				<id>668</id>
				<edge_type>4</edge_type>
				<source_obj>61</source_obj>
				<sink_obj>62</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_90">
				<id>669</id>
				<edge_type>4</edge_type>
				<source_obj>62</source_obj>
				<sink_obj>63</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_91">
				<id>670</id>
				<edge_type>4</edge_type>
				<source_obj>63</source_obj>
				<sink_obj>64</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_92">
				<id>671</id>
				<edge_type>4</edge_type>
				<source_obj>64</source_obj>
				<sink_obj>65</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_93">
				<id>672</id>
				<edge_type>4</edge_type>
				<source_obj>65</source_obj>
				<sink_obj>66</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
		</edges>
	</cdfg>
	<cdfg_regions class_id="21" tracking_level="0" version="0">
		<count>1</count>
		<item_version>0</item_version>
		<item class_id="22" tracking_level="1" version="0" object_id="_94">
			<mId>1</mId>
			<mTag>canny_edge_detection</mTag>
			<mType>0</mType>
			<sub_regions>
				<count>0</count>
				<item_version>0</item_version>
			</sub_regions>
			<basic_blocks>
				<count>1</count>
				<item_version>0</item_version>
				<item>68</item>
			</basic_blocks>
			<mII>-1</mII>
			<mDepth>-1</mDepth>
			<mMinTripCount>-1</mMinTripCount>
			<mMaxTripCount>-1</mMaxTripCount>
			<mMinLatency>276999</mMinLatency>
			<mMaxLatency>276999</mMaxLatency>
			<mIsDfPipe>1</mIsDfPipe>
			<mDfPipe class_id="23" tracking_level="1" version="0" object_id="_95">
				<port_list class_id="24" tracking_level="0" version="0">
					<count>0</count>
					<item_version>0</item_version>
				</port_list>
				<process_list class_id="25" tracking_level="0" version="0">
					<count>9</count>
					<item_version>0</item_version>
					<item class_id="26" tracking_level="1" version="0" object_id="_96">
						<type>0</type>
						<name>canny_edge_detection_1_1_U0</name>
						<ssdmobj_id>58</ssdmobj_id>
						<pins class_id="27" tracking_level="0" version="0">
							<count>4</count>
							<item_version>0</item_version>
							<item class_id="28" tracking_level="1" version="0" object_id="_97">
								<port class_id="29" tracking_level="1" version="0" object_id="_98">
									<name>hist_hthr</name>
									<dir>3</dir>
									<type>0</type>
								</port>
								<inst class_id="30" tracking_level="1" version="0" object_id="_99">
									<type>0</type>
									<name>canny_edge_detection_1_1_U0</name>
									<ssdmobj_id>58</ssdmobj_id>
								</inst>
							</item>
							<item class_id_reference="28" object_id="_100">
								<port class_id_reference="29" object_id="_101">
									<name>hist_lthr</name>
									<dir>3</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_99"></inst>
							</item>
							<item class_id_reference="28" object_id="_102">
								<port class_id_reference="29" object_id="_103">
									<name>hist_hthr_out</name>
									<dir>0</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_99"></inst>
							</item>
							<item class_id_reference="28" object_id="_104">
								<port class_id_reference="29" object_id="_105">
									<name>hist_lthr_out</name>
									<dir>0</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_99"></inst>
							</item>
						</pins>
					</item>
					<item class_id_reference="26" object_id="_106">
						<type>0</type>
						<name>AXIS2GrayArray66_U0</name>
						<ssdmobj_id>59</ssdmobj_id>
						<pins>
							<count>6</count>
							<item_version>0</item_version>
							<item class_id_reference="28" object_id="_107">
								<port class_id_reference="29" object_id="_108">
									<name>axis_src_data_V</name>
									<dir>3</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id="_109">
									<type>0</type>
									<name>AXIS2GrayArray66_U0</name>
									<ssdmobj_id>59</ssdmobj_id>
								</inst>
							</item>
							<item class_id_reference="28" object_id="_110">
								<port class_id_reference="29" object_id="_111">
									<name>hist_hthr</name>
									<dir>0</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_109"></inst>
							</item>
							<item class_id_reference="28" object_id="_112">
								<port class_id_reference="29" object_id="_113">
									<name>hist_lthr</name>
									<dir>0</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_109"></inst>
							</item>
							<item class_id_reference="28" object_id="_114">
								<port class_id_reference="29" object_id="_115">
									<name>hist_hthr_out</name>
									<dir>0</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_109"></inst>
							</item>
							<item class_id_reference="28" object_id="_116">
								<port class_id_reference="29" object_id="_117">
									<name>hist_lthr_out</name>
									<dir>0</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_109"></inst>
							</item>
							<item class_id_reference="28" object_id="_118">
								<port class_id_reference="29" object_id="_119">
									<name>fifo1</name>
									<dir>0</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_109"></inst>
							</item>
						</pins>
					</item>
					<item class_id_reference="26" object_id="_120">
						<type>0</type>
						<name>GaussianBlur_U0</name>
						<ssdmobj_id>60</ssdmobj_id>
						<pins>
							<count>2</count>
							<item_version>0</item_version>
							<item class_id_reference="28" object_id="_121">
								<port class_id_reference="29" object_id="_122">
									<name>fifo1</name>
									<dir>0</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id="_123">
									<type>0</type>
									<name>GaussianBlur_U0</name>
									<ssdmobj_id>60</ssdmobj_id>
								</inst>
							</item>
							<item class_id_reference="28" object_id="_124">
								<port class_id_reference="29" object_id="_125">
									<name>fifo2</name>
									<dir>0</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_123"></inst>
							</item>
						</pins>
					</item>
					<item class_id_reference="26" object_id="_126">
						<type>0</type>
						<name>Sobel_512u_512u_U0</name>
						<ssdmobj_id>61</ssdmobj_id>
						<pins>
							<count>3</count>
							<item_version>0</item_version>
							<item class_id_reference="28" object_id="_127">
								<port class_id_reference="29" object_id="_128">
									<name>fifo2</name>
									<dir>0</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id="_129">
									<type>0</type>
									<name>Sobel_512u_512u_U0</name>
									<ssdmobj_id>61</ssdmobj_id>
								</inst>
							</item>
							<item class_id_reference="28" object_id="_130">
								<port class_id_reference="29" object_id="_131">
									<name>fifo3_value</name>
									<dir>0</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_129"></inst>
							</item>
							<item class_id_reference="28" object_id="_132">
								<port class_id_reference="29" object_id="_133">
									<name>fifo3_grad</name>
									<dir>0</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_129"></inst>
							</item>
						</pins>
					</item>
					<item class_id_reference="26" object_id="_134">
						<type>0</type>
						<name>NonMaxSuppression_U0</name>
						<ssdmobj_id>62</ssdmobj_id>
						<pins>
							<count>3</count>
							<item_version>0</item_version>
							<item class_id_reference="28" object_id="_135">
								<port class_id_reference="29" object_id="_136">
									<name>fifo3_value</name>
									<dir>0</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id="_137">
									<type>0</type>
									<name>NonMaxSuppression_U0</name>
									<ssdmobj_id>62</ssdmobj_id>
								</inst>
							</item>
							<item class_id_reference="28" object_id="_138">
								<port class_id_reference="29" object_id="_139">
									<name>fifo3_grad</name>
									<dir>0</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_137"></inst>
							</item>
							<item class_id_reference="28" object_id="_140">
								<port class_id_reference="29" object_id="_141">
									<name>fifo4</name>
									<dir>0</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_137"></inst>
							</item>
						</pins>
					</item>
					<item class_id_reference="26" object_id="_142">
						<type>0</type>
						<name>ZeroPadding_U0</name>
						<ssdmobj_id>63</ssdmobj_id>
						<pins>
							<count>2</count>
							<item_version>0</item_version>
							<item class_id_reference="28" object_id="_143">
								<port class_id_reference="29" object_id="_144">
									<name>fifo4</name>
									<dir>0</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id="_145">
									<type>0</type>
									<name>ZeroPadding_U0</name>
									<ssdmobj_id>63</ssdmobj_id>
								</inst>
							</item>
							<item class_id_reference="28" object_id="_146">
								<port class_id_reference="29" object_id="_147">
									<name>fifo5</name>
									<dir>0</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_145"></inst>
							</item>
						</pins>
					</item>
					<item class_id_reference="26" object_id="_148">
						<type>0</type>
						<name>HystThreshold_U0</name>
						<ssdmobj_id>64</ssdmobj_id>
						<pins>
							<count>4</count>
							<item_version>0</item_version>
							<item class_id_reference="28" object_id="_149">
								<port class_id_reference="29" object_id="_150">
									<name>hthr</name>
									<dir>0</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id="_151">
									<type>0</type>
									<name>HystThreshold_U0</name>
									<ssdmobj_id>64</ssdmobj_id>
								</inst>
							</item>
							<item class_id_reference="28" object_id="_152">
								<port class_id_reference="29" object_id="_153">
									<name>lthr</name>
									<dir>0</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_151"></inst>
							</item>
							<item class_id_reference="28" object_id="_154">
								<port class_id_reference="29" object_id="_155">
									<name>fifo5</name>
									<dir>0</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_151"></inst>
							</item>
							<item class_id_reference="28" object_id="_156">
								<port class_id_reference="29" object_id="_157">
									<name>fifo6</name>
									<dir>0</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_151"></inst>
							</item>
						</pins>
					</item>
					<item class_id_reference="26" object_id="_158">
						<type>0</type>
						<name>HystThresholdComp_U0</name>
						<ssdmobj_id>65</ssdmobj_id>
						<pins>
							<count>2</count>
							<item_version>0</item_version>
							<item class_id_reference="28" object_id="_159">
								<port class_id_reference="29" object_id="_160">
									<name>fifo6</name>
									<dir>0</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id="_161">
									<type>0</type>
									<name>HystThresholdComp_U0</name>
									<ssdmobj_id>65</ssdmobj_id>
								</inst>
							</item>
							<item class_id_reference="28" object_id="_162">
								<port class_id_reference="29" object_id="_163">
									<name>fifo7</name>
									<dir>0</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_161"></inst>
							</item>
						</pins>
					</item>
					<item class_id_reference="26" object_id="_164">
						<type>0</type>
						<name>GrayArray2AXIS_U0</name>
						<ssdmobj_id>66</ssdmobj_id>
						<pins>
							<count>3</count>
							<item_version>0</item_version>
							<item class_id_reference="28" object_id="_165">
								<port class_id_reference="29" object_id="_166">
									<name>axis_dst_data_V</name>
									<dir>3</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id="_167">
									<type>0</type>
									<name>GrayArray2AXIS_U0</name>
									<ssdmobj_id>66</ssdmobj_id>
								</inst>
							</item>
							<item class_id_reference="28" object_id="_168">
								<port class_id_reference="29" object_id="_169">
									<name>axis_dst_last_V</name>
									<dir>3</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_167"></inst>
							</item>
							<item class_id_reference="28" object_id="_170">
								<port class_id_reference="29" object_id="_171">
									<name>fifo7</name>
									<dir>0</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_167"></inst>
							</item>
						</pins>
					</item>
				</process_list>
				<channel_list class_id="31" tracking_level="0" version="0">
					<count>12</count>
					<item_version>0</item_version>
					<item class_id="32" tracking_level="1" version="0" object_id="_172">
						<type>1</type>
						<name>hist_hthr_c1</name>
						<ssdmobj_id>18</ssdmobj_id>
						<ctype>0</ctype>
						<depth>2</depth>
						<bitwidth>8</bitwidth>
						<source class_id_reference="28" object_id="_173">
							<port class_id_reference="29" object_id="_174">
								<name>in</name>
								<dir>3</dir>
								<type>0</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_99"></inst>
						</source>
						<sink class_id_reference="28" object_id="_175">
							<port class_id_reference="29" object_id="_176">
								<name>out</name>
								<dir>3</dir>
								<type>1</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_109"></inst>
						</sink>
					</item>
					<item class_id_reference="32" object_id="_177">
						<type>1</type>
						<name>hist_lthr_c2</name>
						<ssdmobj_id>17</ssdmobj_id>
						<ctype>0</ctype>
						<depth>2</depth>
						<bitwidth>8</bitwidth>
						<source class_id_reference="28" object_id="_178">
							<port class_id_reference="29" object_id="_179">
								<name>in</name>
								<dir>3</dir>
								<type>0</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_99"></inst>
						</source>
						<sink class_id_reference="28" object_id="_180">
							<port class_id_reference="29" object_id="_181">
								<name>out</name>
								<dir>3</dir>
								<type>1</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_109"></inst>
						</sink>
					</item>
					<item class_id_reference="32" object_id="_182">
						<type>1</type>
						<name>hist_hthr_c</name>
						<ssdmobj_id>36</ssdmobj_id>
						<ctype>0</ctype>
						<depth>6</depth>
						<bitwidth>8</bitwidth>
						<source class_id_reference="28" object_id="_183">
							<port class_id_reference="29" object_id="_184">
								<name>in</name>
								<dir>3</dir>
								<type>0</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_109"></inst>
						</source>
						<sink class_id_reference="28" object_id="_185">
							<port class_id_reference="29" object_id="_186">
								<name>out</name>
								<dir>3</dir>
								<type>1</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_151"></inst>
						</sink>
					</item>
					<item class_id_reference="32" object_id="_187">
						<type>1</type>
						<name>hist_lthr_c</name>
						<ssdmobj_id>35</ssdmobj_id>
						<ctype>0</ctype>
						<depth>6</depth>
						<bitwidth>8</bitwidth>
						<source class_id_reference="28" object_id="_188">
							<port class_id_reference="29" object_id="_189">
								<name>in</name>
								<dir>3</dir>
								<type>0</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_109"></inst>
						</source>
						<sink class_id_reference="28" object_id="_190">
							<port class_id_reference="29" object_id="_191">
								<name>out</name>
								<dir>3</dir>
								<type>1</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_151"></inst>
						</sink>
					</item>
					<item class_id_reference="32" object_id="_192">
						<type>1</type>
						<name>fifo1</name>
						<ssdmobj_id>7</ssdmobj_id>
						<ctype>0</ctype>
						<depth>1</depth>
						<bitwidth>8</bitwidth>
						<source class_id_reference="28" object_id="_193">
							<port class_id_reference="29" object_id="_194">
								<name>in</name>
								<dir>3</dir>
								<type>0</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_109"></inst>
						</source>
						<sink class_id_reference="28" object_id="_195">
							<port class_id_reference="29" object_id="_196">
								<name>out</name>
								<dir>3</dir>
								<type>1</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_123"></inst>
						</sink>
					</item>
					<item class_id_reference="32" object_id="_197">
						<type>1</type>
						<name>fifo2</name>
						<ssdmobj_id>8</ssdmobj_id>
						<ctype>0</ctype>
						<depth>1</depth>
						<bitwidth>8</bitwidth>
						<source class_id_reference="28" object_id="_198">
							<port class_id_reference="29" object_id="_199">
								<name>in</name>
								<dir>3</dir>
								<type>0</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_123"></inst>
						</source>
						<sink class_id_reference="28" object_id="_200">
							<port class_id_reference="29" object_id="_201">
								<name>out</name>
								<dir>3</dir>
								<type>1</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_129"></inst>
						</sink>
					</item>
					<item class_id_reference="32" object_id="_202">
						<type>1</type>
						<name>fifo3_value</name>
						<ssdmobj_id>9</ssdmobj_id>
						<ctype>0</ctype>
						<depth>1</depth>
						<bitwidth>8</bitwidth>
						<source class_id_reference="28" object_id="_203">
							<port class_id_reference="29" object_id="_204">
								<name>in</name>
								<dir>3</dir>
								<type>0</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_129"></inst>
						</source>
						<sink class_id_reference="28" object_id="_205">
							<port class_id_reference="29" object_id="_206">
								<name>out</name>
								<dir>3</dir>
								<type>1</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_137"></inst>
						</sink>
					</item>
					<item class_id_reference="32" object_id="_207">
						<type>1</type>
						<name>fifo3_grad</name>
						<ssdmobj_id>10</ssdmobj_id>
						<ctype>0</ctype>
						<depth>1</depth>
						<bitwidth>2</bitwidth>
						<source class_id_reference="28" object_id="_208">
							<port class_id_reference="29" object_id="_209">
								<name>in</name>
								<dir>3</dir>
								<type>0</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_129"></inst>
						</source>
						<sink class_id_reference="28" object_id="_210">
							<port class_id_reference="29" object_id="_211">
								<name>out</name>
								<dir>3</dir>
								<type>1</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_137"></inst>
						</sink>
					</item>
					<item class_id_reference="32" object_id="_212">
						<type>1</type>
						<name>fifo4</name>
						<ssdmobj_id>11</ssdmobj_id>
						<ctype>0</ctype>
						<depth>1</depth>
						<bitwidth>8</bitwidth>
						<source class_id_reference="28" object_id="_213">
							<port class_id_reference="29" object_id="_214">
								<name>in</name>
								<dir>3</dir>
								<type>0</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_137"></inst>
						</source>
						<sink class_id_reference="28" object_id="_215">
							<port class_id_reference="29" object_id="_216">
								<name>out</name>
								<dir>3</dir>
								<type>1</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_145"></inst>
						</sink>
					</item>
					<item class_id_reference="32" object_id="_217">
						<type>1</type>
						<name>fifo5</name>
						<ssdmobj_id>12</ssdmobj_id>
						<ctype>0</ctype>
						<depth>1</depth>
						<bitwidth>8</bitwidth>
						<source class_id_reference="28" object_id="_218">
							<port class_id_reference="29" object_id="_219">
								<name>in</name>
								<dir>3</dir>
								<type>0</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_145"></inst>
						</source>
						<sink class_id_reference="28" object_id="_220">
							<port class_id_reference="29" object_id="_221">
								<name>out</name>
								<dir>3</dir>
								<type>1</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_151"></inst>
						</sink>
					</item>
					<item class_id_reference="32" object_id="_222">
						<type>1</type>
						<name>fifo6</name>
						<ssdmobj_id>13</ssdmobj_id>
						<ctype>0</ctype>
						<depth>1</depth>
						<bitwidth>8</bitwidth>
						<source class_id_reference="28" object_id="_223">
							<port class_id_reference="29" object_id="_224">
								<name>in</name>
								<dir>3</dir>
								<type>0</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_151"></inst>
						</source>
						<sink class_id_reference="28" object_id="_225">
							<port class_id_reference="29" object_id="_226">
								<name>out</name>
								<dir>3</dir>
								<type>1</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_161"></inst>
						</sink>
					</item>
					<item class_id_reference="32" object_id="_227">
						<type>1</type>
						<name>fifo7</name>
						<ssdmobj_id>14</ssdmobj_id>
						<ctype>0</ctype>
						<depth>1</depth>
						<bitwidth>8</bitwidth>
						<source class_id_reference="28" object_id="_228">
							<port class_id_reference="29" object_id="_229">
								<name>in</name>
								<dir>3</dir>
								<type>0</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_161"></inst>
						</source>
						<sink class_id_reference="28" object_id="_230">
							<port class_id_reference="29" object_id="_231">
								<name>out</name>
								<dir>3</dir>
								<type>1</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_167"></inst>
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
	<fsm class_id="-1"></fsm>
	<res class_id="-1"></res>
	<node_label_latency class_id="36" tracking_level="0" version="0">
		<count>16</count>
		<item_version>0</item_version>
		<item class_id="37" tracking_level="0" version="0">
			<first>15</first>
			<second class_id="38" tracking_level="0" version="0">
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>16</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>17</first>
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
			<first>35</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>36</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>58</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>59</first>
			<second>
				<first>1</first>
				<second>1</second>
			</second>
		</item>
		<item>
			<first>60</first>
			<second>
				<first>3</first>
				<second>1</second>
			</second>
		</item>
		<item>
			<first>61</first>
			<second>
				<first>5</first>
				<second>1</second>
			</second>
		</item>
		<item>
			<first>62</first>
			<second>
				<first>7</first>
				<second>1</second>
			</second>
		</item>
		<item>
			<first>63</first>
			<second>
				<first>9</first>
				<second>1</second>
			</second>
		</item>
		<item>
			<first>64</first>
			<second>
				<first>11</first>
				<second>1</second>
			</second>
		</item>
		<item>
			<first>65</first>
			<second>
				<first>13</first>
				<second>1</second>
			</second>
		</item>
		<item>
			<first>66</first>
			<second>
				<first>15</first>
				<second>1</second>
			</second>
		</item>
		<item>
			<first>67</first>
			<second>
				<first>17</first>
				<second>0</second>
			</second>
		</item>
	</node_label_latency>
	<bblk_ent_exit class_id="39" tracking_level="0" version="0">
		<count>1</count>
		<item_version>0</item_version>
		<item class_id="40" tracking_level="0" version="0">
			<first>68</first>
			<second class_id="41" tracking_level="0" version="0">
				<first>0</first>
				<second>17</second>
			</second>
		</item>
	</bblk_ent_exit>
	<regions class_id="42" tracking_level="0" version="0">
		<count>1</count>
		<item_version>0</item_version>
		<item class_id="43" tracking_level="1" version="0" object_id="_232">
			<region_name>canny_edge_detection</region_name>
			<basic_blocks>
				<count>1</count>
				<item_version>0</item_version>
				<item>68</item>
			</basic_blocks>
			<nodes>
				<count>53</count>
				<item_version>0</item_version>
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
				<item>40</item>
				<item>41</item>
				<item>42</item>
				<item>43</item>
				<item>44</item>
				<item>45</item>
				<item>46</item>
				<item>47</item>
				<item>48</item>
				<item>49</item>
				<item>50</item>
				<item>51</item>
				<item>52</item>
				<item>53</item>
				<item>54</item>
				<item>55</item>
				<item>56</item>
				<item>57</item>
				<item>58</item>
				<item>59</item>
				<item>60</item>
				<item>61</item>
				<item>62</item>
				<item>63</item>
				<item>64</item>
				<item>65</item>
				<item>66</item>
				<item>67</item>
			</nodes>
			<anchor_node>-1</anchor_node>
			<region_type>16</region_type>
			<interval>0</interval>
			<pipe_depth>0</pipe_depth>
		</item>
	</regions>
	<dp_fu_nodes class_id="44" tracking_level="0" version="0">
		<count>0</count>
		<item_version>0</item_version>
	</dp_fu_nodes>
	<dp_fu_nodes_expression class_id="45" tracking_level="0" version="0">
		<count>0</count>
		<item_version>0</item_version>
	</dp_fu_nodes_expression>
	<dp_fu_nodes_module>
		<count>0</count>
		<item_version>0</item_version>
	</dp_fu_nodes_module>
	<dp_fu_nodes_io>
		<count>0</count>
		<item_version>0</item_version>
	</dp_fu_nodes_io>
	<return_ports>
		<count>0</count>
		<item_version>0</item_version>
	</return_ports>
	<dp_mem_port_nodes class_id="46" tracking_level="0" version="0">
		<count>0</count>
		<item_version>0</item_version>
	</dp_mem_port_nodes>
	<dp_reg_nodes>
		<count>0</count>
		<item_version>0</item_version>
	</dp_reg_nodes>
	<dp_regname_nodes>
		<count>0</count>
		<item_version>0</item_version>
	</dp_regname_nodes>
	<dp_reg_phi>
		<count>0</count>
		<item_version>0</item_version>
	</dp_reg_phi>
	<dp_regname_phi>
		<count>0</count>
		<item_version>0</item_version>
	</dp_regname_phi>
	<dp_port_io_nodes class_id="47" tracking_level="0" version="0">
		<count>0</count>
		<item_version>0</item_version>
	</dp_port_io_nodes>
	<port2core class_id="48" tracking_level="0" version="0">
		<count>0</count>
		<item_version>0</item_version>
	</port2core>
	<node2core>
		<count>0</count>
		<item_version>0</item_version>
	</node2core>
</syndb>
</boost_serialization>

